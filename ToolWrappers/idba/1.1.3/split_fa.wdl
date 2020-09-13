version 1.0

task SplitFa {
  input {
    Boolean? paired
    Boolean? merge
    Boolean? filter
    Int fq_two_fa
    String tmp_dot_fq
    String tmp_dot_fa
  }
  command <<<
    split_fa \
      ~{fq_two_fa} \
      ~{tmp_dot_fq} \
      ~{tmp_dot_fa} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (filter) then "--filter" else ""}
  >>>
  parameter_meta {
    paired: "if the reads are paired-end in one file"
    merge: "if the reads are paired-end in two files"
    filter: "filter out reads containing 'N'"
    fq_two_fa: ""
    tmp_dot_fq: ""
    tmp_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}