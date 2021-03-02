version 1.0

task Ftbl2cumoAb {
  command <<<
    ftbl2cumoAb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}