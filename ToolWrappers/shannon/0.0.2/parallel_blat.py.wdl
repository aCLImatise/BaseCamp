version 1.0

task ParallelBlatpy {
  command <<<
    parallel_blat_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}