version 1.0

task HmmalignHmmfile {
  input {
    Boolean? options
    String seq_file
  }
  command <<<
    hmmalign hmmfile \
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