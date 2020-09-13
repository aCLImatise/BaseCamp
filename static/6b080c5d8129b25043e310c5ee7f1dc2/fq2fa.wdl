version 1.0

task Fq2fa {
  input {
    Boolean? paired
    Boolean? merge
    Boolean? filter
    String tmp_dot_fq
    String tmp_dot_fa
  }
  command <<<
    fq2fa \
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
    tmp_dot_fq: ""
    tmp_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}