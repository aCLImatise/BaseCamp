version 1.0

task ParallelBlatpy {
  command <<<
    parallel_blat_py
  >>>
  output {
    File out_stdout = stdout()
  }
}