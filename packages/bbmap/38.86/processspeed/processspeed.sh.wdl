version 1.0

task Processspeedsh {
  input {
    File file
  }
  command <<<
    processspeed_sh \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}