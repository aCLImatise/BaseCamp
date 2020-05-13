version 1.0

task VarlociraptorPreprocessVariants {
  input {
    Boolean omitOmitIndels
    Boolean omitOmitSnVs
    String alignmentAlignmentProperties
    String bamBam
    String candidatesCandidates
    String inInDelWindow
    Int maxMaxDepth
    Int maxMaxInDelLen
    String outputOutput
    String strandedStrandedNess
    String spuriousSpuriousDelRate
    String spuriousSpuriousDelExtRate
    String spuriousSpuriousInsRate
    String spuriousSpuriousInSextRate
    String? referenceReferenceFastA
  }
  command <<<
    varlociraptor preprocess variants \
      ~{referenceReferenceFastA} \
      ~{true="--omit-indels" false="" omitOmitIndels} \
      ~{true="--omit-snvs" false="" omitOmitSnVs} \
      ~{if defined(alignmentAlignmentProperties) then ("--alignment-properties " +  '"' + alignmentAlignmentProperties + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(candidatesCandidates) then ("--candidates " +  '"' + candidatesCandidates + '"') else ""} \
      ~{if defined(inInDelWindow) then ("--indel-window " +  '"' + inInDelWindow + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(maxMaxInDelLen) then ("--max-indel-len " +  '"' + maxMaxInDelLen + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(strandedStrandedNess) then ("--strandedness " +  '"' + strandedStrandedNess + '"') else ""} \
      ~{if defined(spuriousSpuriousDelRate) then ("--spurious-del-rate " +  '"' + spuriousSpuriousDelRate + '"') else ""} \
      ~{if defined(spuriousSpuriousDelExtRate) then ("--spurious-delext-rate " +  '"' + spuriousSpuriousDelExtRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInsRate) then ("--spurious-ins-rate " +  '"' + spuriousSpuriousInsRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInSextRate) then ("--spurious-insext-rate " +  '"' + spuriousSpuriousInSextRate + '"') else ""}
  >>>
}