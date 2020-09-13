version 1.0

task HmmscanHmmdb {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmscan hmmdb \
      ~{seq_file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}