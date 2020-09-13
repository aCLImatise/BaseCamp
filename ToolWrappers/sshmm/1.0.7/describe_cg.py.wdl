version 1.0

task DescribeCgpy {
  command <<<
    describe_cg_py
  >>>
  output {
    File out_stdout = stdout()
  }
}