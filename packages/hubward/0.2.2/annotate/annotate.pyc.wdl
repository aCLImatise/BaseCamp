version 1.0

task Annotatepyc {
  command <<<
    annotate_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}