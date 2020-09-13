version 1.0

task Parallelpy {
  command <<<
    parallel_py
  >>>
  output {
    File out_stdout = stdout()
  }
}