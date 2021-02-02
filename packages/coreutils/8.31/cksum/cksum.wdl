version 1.0

task Cksum {
  input {
    File? file
  }
  command <<<
    cksum \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}