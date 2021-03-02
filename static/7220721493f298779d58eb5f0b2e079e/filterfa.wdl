version 1.0

task Filterfa {
  input {
    Boolean? paired
    Boolean? merge
    String tmp_dot_fa
    String out_dot_fa
  }
  command <<<
    filterfa \
      ~{tmp_dot_fa} \
      ~{out_dot_fa} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (merge) then "--merge" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    paired: "if the reads are paired-end"
    merge: "if the reads are paired-end in two files"
    tmp_dot_fa: ""
    out_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}