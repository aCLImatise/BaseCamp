version 1.0

task HmmeralignHmmfile {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmeralign hmmfile \
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