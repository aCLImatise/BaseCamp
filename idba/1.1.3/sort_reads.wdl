version 1.0

task SortReads {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    Boolean filterFilter
    String minMinLength
  }
  command <<<
    sort_reads \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter" false="" filterFilter} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""}
  >>>
}