version 1.0

task CRISPRessoWGS {
  input {
    Boolean trimTrimSequences
    String trimTrimMoMaticOptionsString
    Int minMinPairedEndReadsOverlap
    Boolean hideHideMutationsOutsideWindowNhej
    String windowWindowAroundSgRna
    String cleavageCleavageOffset
    String excludeExcludeBpFromLeft
    String excludeExcludeBpFromRight
    String hdrHdrPerfectAlignmentThreshold
    Boolean ignoreIgnoreSubstitutions
    Boolean ignoreIgnoreInsertions
    Boolean ignoreIgnoreDeletions
    String needleNeedleOptionsString
    Boolean keepKeepIntermediate
    Boolean dumpDump
    Boolean saveSaveAlsoPng
    String nNProcesses
  }
  command <<<
    CRISPRessoWGS \
      ~{true="--trim_sequences" false="" trimTrimSequences} \
      ~{if defined(trimTrimMoMaticOptionsString) then ("--trimmomatic_options_string " +  '"' + trimTrimMoMaticOptionsString + '"') else ""} \
      ~{if defined(minMinPairedEndReadsOverlap) then ("--min_paired_end_reads_overlap " +  '"' + minMinPairedEndReadsOverlap + '"') else ""} \
      ~{true="--hide_mutations_outside_window_NHEJ" false="" hideHideMutationsOutsideWindowNhej} \
      ~{if defined(windowWindowAroundSgRna) then ("--window_around_sgrna " +  '"' + windowWindowAroundSgRna + '"') else ""} \
      ~{if defined(cleavageCleavageOffset) then ("--cleavage_offset " +  '"' + cleavageCleavageOffset + '"') else ""} \
      ~{if defined(excludeExcludeBpFromLeft) then ("--exclude_bp_from_left " +  '"' + excludeExcludeBpFromLeft + '"') else ""} \
      ~{if defined(excludeExcludeBpFromRight) then ("--exclude_bp_from_right " +  '"' + excludeExcludeBpFromRight + '"') else ""} \
      ~{if defined(hdrHdrPerfectAlignmentThreshold) then ("--hdr_perfect_alignment_threshold " +  '"' + hdrHdrPerfectAlignmentThreshold + '"') else ""} \
      ~{true="--ignore_substitutions" false="" ignoreIgnoreSubstitutions} \
      ~{true="--ignore_insertions" false="" ignoreIgnoreInsertions} \
      ~{true="--ignore_deletions" false="" ignoreIgnoreDeletions} \
      ~{if defined(needleNeedleOptionsString) then ("--needle_options_string " +  '"' + needleNeedleOptionsString + '"') else ""} \
      ~{true="--keep_intermediate" false="" keepKeepIntermediate} \
      ~{true="--dump" false="" dumpDump} \
      ~{true="--save_also_png" false="" saveSaveAlsoPng} \
      ~{if defined(nNProcesses) then ("--n_processes " +  '"' + nNProcesses + '"') else ""}
  >>>
}