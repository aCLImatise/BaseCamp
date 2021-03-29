version 1.0

task TSSARbak {
  command <<<
    TSSAR_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}