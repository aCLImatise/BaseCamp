version 1.0

task Samhead {
  input {
    File? file
  }
  command <<<
    samhead \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}