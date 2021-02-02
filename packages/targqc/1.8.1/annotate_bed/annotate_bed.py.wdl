version 1.0

task AnnotateBedpy {
  command <<<
    annotate_bed_py
  >>>
  output {
    File out_stdout = stdout()
  }
}