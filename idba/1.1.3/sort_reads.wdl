version 1.0

task SortReads {
  input {
    Boolean? paired
    Boolean? merge
    Boolean? filter
    String? min_length
    String fq_two_fa
    String tmp_dot_fq
    String tmp_dot_fa
  }
  command <<<
    sort_reads \
      ~{fq_two_fa} \
      ~{tmp_dot_fq} \
      ~{tmp_dot_fa} \
      ~{true="--paired" false="" paired} \
      ~{true="--merge" false="" merge} \
      ~{true="--filter" false="" filter} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    paired: "if the reads are paired-end in one file"
    merge: "if the reads are paired-end in two files"
    filter: "filter out reads containing 'N'"
    min_length: "(=0)              minimum length "
    fq_two_fa: ""
    tmp_dot_fq: ""
    tmp_dot_fa: ""
  }
}