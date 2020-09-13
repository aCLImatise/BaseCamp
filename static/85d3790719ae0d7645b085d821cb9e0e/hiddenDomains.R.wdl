version 1.0

task HiddenDomainsR {
  command <<<
    hiddenDomains_R
  >>>
  output {
    File out_stdout = stdout()
  }
}