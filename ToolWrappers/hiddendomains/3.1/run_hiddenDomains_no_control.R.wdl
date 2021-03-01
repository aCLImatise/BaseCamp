version 1.0

task RunHiddenDomainsNoControlR {
  command <<<
    run_hiddenDomains_no_control_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}