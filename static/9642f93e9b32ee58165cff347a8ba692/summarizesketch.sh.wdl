version 1.0

task Summarizesketchsh {
  input {
    String in
  }
  command <<<
    summarizesketch_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}