version 1.0

task LynerReadannotation {
  input {
    File file
  }
  command <<<
    lyner read_annotation \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}