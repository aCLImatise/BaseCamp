version 1.0

task MbBamPostprocess {
  input {
    Int minMinLength
    String mutMutEdgeBp
    Int maxMaxTransitions
    Int minMinBaseQuality
    String avgAvgAlignmentQuality
    Int minMinMismatchQuality
    String transitionTransitionOfInterest
    Boolean dumpDumpRawData
    String? inputInputBamFile
    String? outputOutputBamFile
    String? outputOutputDirectory
  }
  command <<<
    mb-bam-postprocess \
      ~{inputInputBamFile} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(mutMutEdgeBp) then ("--mut_edge_bp " +  '"' + mutMutEdgeBp + '"') else ""} \
      ~{if defined(maxMaxTransitions) then ("--max_transitions " +  '"' + maxMaxTransitions + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min_base_quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(avgAvgAlignmentQuality) then ("--avg_alignment_quality " +  '"' + avgAvgAlignmentQuality + '"') else ""} \
      ~{if defined(minMinMismatchQuality) then ("--min_mismatch_quality " +  '"' + minMinMismatchQuality + '"') else ""} \
      ~{if defined(transitionTransitionOfInterest) then ("--transition_of_interest " +  '"' + transitionTransitionOfInterest + '"') else ""} \
      ~{true="--dump_raw_data" false="" dumpDumpRawData} \
      ~{outputOutputBamFile} \
      ~{outputOutputDirectory}
  >>>
}