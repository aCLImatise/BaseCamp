version 1.0

task ParseAnnotationpy {
  command <<<
    parse_annotation_py
  >>>
  output {
    File out_stdout = stdout()
  }
}