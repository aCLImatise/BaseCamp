version 1.0

task Mergepgmsh {
  input {
    String in
  }
  command <<<
    mergepgm_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}