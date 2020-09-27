version 1.0

task AnnotationLoadpy {
  command <<<
    Annotation_Load_py
  >>>
  output {
    File out_stdout = stdout()
  }
}