version 1.0

task LynerReadannotation {
  input {
    File var_file
  }
  command <<<
    lyner read_annotation \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}