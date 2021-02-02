version 1.0

task Summarizesketchsh {
  input {
    String in
  }
  command <<<
    summarizesketch_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}