version 1.0

task TailLines {
  input {
    File file
  }
  command <<<
    tailLines \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}