version 1.0

task Parallelpy {
  command <<<
    parallel_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}