version 1.0

task Upgradeprjpl {
  command <<<
    upgradeprj_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}