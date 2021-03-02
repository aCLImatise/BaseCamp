version 1.0

task ParseAnnotationpy {
  command <<<
    parse_annotation_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}