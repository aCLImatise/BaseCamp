version 1.0

task KmerCountpy {
  command <<<
    KmerCount_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}