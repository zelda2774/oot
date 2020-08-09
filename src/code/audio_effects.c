#include <ultra64.h>
#include <global.h>

// #pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_SequenceChannelProcessSound.s")

void Audio_SequenceChannelProcessSound(SequenceChannel *seqChannel, s32 recalculateVolume, s32 b) {
    f32 channelVolume;
    f32 chanFreqScale;
    s32 i;

    if (seqChannel->changes.asBitfields.volume || recalculateVolume) {
        channelVolume = seqChannel->volume * seqChannel->volumeScale * seqChannel->seqPlayer->appliedFadeVolume;
        if (seqChannel->seqPlayer->muted && (seqChannel->muteBehavior & 0x20)) {
            channelVolume = seqChannel->seqPlayer->muteVolumeScale * channelVolume;
        }
        seqChannel->appliedVolume = channelVolume * channelVolume;
    }

    if (seqChannel->changes.asBitfields.pan) {
        seqChannel->pan = seqChannel->newPan * seqChannel->panChannelWeight;
    }

    chanFreqScale = seqChannel->freqScale;
    if (b != 0) {
        chanFreqScale *= seqChannel->seqPlayer->unk_34;
        seqChannel->changes.asBitfields.freqScale = 1;
    }

    for (i = 0; i < 4; ++i) {
        SequenceChannelLayer* layer = seqChannel->layers[i];
        if (layer != NULL && layer->enabled && layer->note != NULL) {
            if (layer->notePropertiesNeedInit) {
                layer->noteFreqScale = layer->freqScale * chanFreqScale;
                layer->noteVelocity = layer->velocitySquare * seqChannel->appliedVolume;
                layer->notePan = (seqChannel->pan + layer->pan * (0x80 - seqChannel->panChannelWeight)) >> 7;
                layer->notePropertiesNeedInit = 0;
            } else {
                if (seqChannel->changes.asBitfields.freqScale) {
                    layer->noteFreqScale = layer->freqScale * chanFreqScale;
                }
                if (seqChannel->changes.asBitfields.volume || recalculateVolume) {
                    layer->noteVelocity = layer->velocitySquare * seqChannel->appliedVolume;
                }
                if (seqChannel->changes.asBitfields.pan) {
                    layer->notePan = (seqChannel->pan + layer->pan * (0x80 - seqChannel->panChannelWeight)) >> 7;
                }
            }
        }
    }
    seqChannel->changes.asByte = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_SequencePlayerProcessSound.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_GetPortamentoFreqScale.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_GetVibratoPitchChange.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_GetVibratoFreqScale.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_NoteVibratoUpdate.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_NoteVibratoInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/func_800E8FB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_AdsrInit.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_effects/Audio_AdsrUpdate.s")
