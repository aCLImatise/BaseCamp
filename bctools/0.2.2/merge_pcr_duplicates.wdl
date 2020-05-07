version 1.0

task MergePcrDuplicates.pyAlignments {
  input {
    String outfileOutfile
    Boolean verboseVerbose
    Boolean debugDebug
    String? alignmentsAlignments
    String? bcBcLib
  }
  command <<<
    merge_pcr_duplicates.py alignments \
      ~{alignmentsAlignments} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{bcBcLib}
  >>>
}