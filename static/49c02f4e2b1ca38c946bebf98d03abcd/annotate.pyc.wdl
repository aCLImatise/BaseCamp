version 1.0

task Annotatepyc {
  command <<<
    annotate_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}