version 1.0

task Mergepgmsh {
  input {
    String in
  }
  command <<<
    mergepgm_sh \
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