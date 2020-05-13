version 1.0

task RtgHelpVcfmerge {
  input {
    String addAddHeader
    String forceForceMerge
    Boolean forceForceMergeAll
    Boolean noNoGzip
    Boolean noNoHeader
    Boolean noNoMergeAlts
    Boolean noNoMergeRecords
    Boolean preservePreserveFormats
    Boolean statsStats
  }
  command <<<
    rtg help vcfmerge \
      ~{if defined(addAddHeader) then ("--add-header " +  '"' + addAddHeader + '"') else ""} \
      ~{if defined(forceForceMerge) then ("--force-merge " +  '"' + forceForceMerge + '"') else ""} \
      ~{true="--force-merge-all" false="" forceForceMergeAll} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{true="--no-merge-alts" false="" noNoMergeAlts} \
      ~{true="--no-merge-records" false="" noNoMergeRecords} \
      ~{true="--preserve-formats" false="" preservePreserveFormats} \
      ~{true="--stats" false="" statsStats}
  >>>
}