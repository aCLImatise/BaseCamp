version 1.0

task Vcfflatten {
  input {
    File? file
  }
  command <<<
    vcfflatten \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}