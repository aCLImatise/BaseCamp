version 1.0

task AnnotateBedpy {
  command <<<
    annotate_bed_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}