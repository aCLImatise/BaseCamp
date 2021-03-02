version 1.0

task Revcomp {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    revcomp \
      ~{seq_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}