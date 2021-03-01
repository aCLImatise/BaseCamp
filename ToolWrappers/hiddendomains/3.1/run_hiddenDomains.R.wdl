version 1.0

task RunHiddenDomainsR {
  command <<<
    run_hiddenDomains_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}