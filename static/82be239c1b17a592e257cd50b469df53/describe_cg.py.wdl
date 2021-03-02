version 1.0

task DescribeCgpy {
  command <<<
    describe_cg_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}