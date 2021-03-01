version 1.0

task Ftbl2cumoAbpy {
  command <<<
    ftbl2cumoAb_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}