version 1.0

task SvabaRun {
  input {
    Boolean germlineGermline
    Boolean lodLod
    Boolean lodLodDbsnp
    Boolean lodLodSomatic
    Boolean lodLodSomaticDbsnp
    Boolean scaleScaleErrors
    Boolean noNoInterChromLookup
    Boolean discordantDiscordantOnly
    Boolean numNumAssemblyRounds
    Boolean numNumToSample
    Boolean hpHp
    Boolean overrideOverrideReferenceCheck
    Boolean readReadTracking
    Boolean writeWriteExtractedReads
    Boolean writeWriteAsQg
    Boolean bwaBwaMatchScore
    Boolean gapGapOpenPenalty
    Boolean gapGapExtensionPenalty
    Boolean mismatchMismatchPenalty
    Boolean bandwidthBandwidth
    Boolean zZDropOff
    Boolean reseedReseedTrigger
    Boolean penaltyPenaltyClip3
    Boolean penaltyPenaltyClip5
  }
  command <<<
    svaba run \
      ~{true="--germline" false="" germlineGermline} \
      ~{true="--lod" false="" lodLod} \
      ~{true="--lod-dbsnp" false="" lodLodDbsnp} \
      ~{true="--lod-somatic" false="" lodLodSomatic} \
      ~{true="--lod-somatic-dbsnp" false="" lodLodSomaticDbsnp} \
      ~{true="--scale-errors" false="" scaleScaleErrors} \
      ~{true="--no-interchrom-lookup" false="" noNoInterChromLookup} \
      ~{true="--discordant-only" false="" discordantDiscordantOnly} \
      ~{true="--num-assembly-rounds" false="" numNumAssemblyRounds} \
      ~{true="--num-to-sample" false="" numNumToSample} \
      ~{true="--hp" false="" hpHp} \
      ~{true="--override-reference-check" false="" overrideOverrideReferenceCheck} \
      ~{true="--read-tracking" false="" readReadTracking} \
      ~{true="--write-extracted-reads" false="" writeWriteExtractedReads} \
      ~{true="--write-asqg" false="" writeWriteAsQg} \
      ~{true="--bwa-match-score" false="" bwaBwaMatchScore} \
      ~{true="--gap-open-penalty" false="" gapGapOpenPenalty} \
      ~{true="--gap-extension-penalty" false="" gapGapExtensionPenalty} \
      ~{true="--mismatch-penalty" false="" mismatchMismatchPenalty} \
      ~{true="--bandwidth" false="" bandwidthBandwidth} \
      ~{true="--z-dropoff" false="" zZDropOff} \
      ~{true="--reseed-trigger" false="" reseedReseedTrigger} \
      ~{true="--penalty-clip-3" false="" penaltyPenaltyClip3} \
      ~{true="--penalty-clip-5" false="" penaltyPenaltyClip5}
  >>>
}