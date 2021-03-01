version 1.0

task ProjectAndStrip {
  input {
    String seq_n
  }
  command <<<
    projectAndStrip \
      ~{seq_n}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}