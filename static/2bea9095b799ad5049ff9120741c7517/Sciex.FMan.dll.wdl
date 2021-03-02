version 1.0

task SciexFMandll {
  command <<<
    Sciex_FMan_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}