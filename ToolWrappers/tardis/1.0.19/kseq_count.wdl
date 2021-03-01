version 1.0

task KseqCount {
  input {
    Boolean? a
    File filename
  }
  command <<<
    kseq_count \
      ~{filename} \
      ~{if (a) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}