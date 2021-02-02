version 1.0

task Summarizemergesh {
  input {
    String in
  }
  command <<<
    summarizemerge_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}