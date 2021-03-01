version 1.0

task AnnotationLoadpy {
  command <<<
    Annotation_Load_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}