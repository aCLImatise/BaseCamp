version 1.0

task Tsort {
  input {
    File? file
  }
  command <<<
    tsort \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}