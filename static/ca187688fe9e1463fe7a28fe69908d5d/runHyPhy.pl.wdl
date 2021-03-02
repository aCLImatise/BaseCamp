version 1.0

task RunHyPhypl {
  command <<<
    runHyPhy_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}