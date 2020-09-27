version 1.0

task RunHiddenDomainsR {
  command <<<
    run_hiddenDomains_R
  >>>
  output {
    File out_stdout = stdout()
  }
}