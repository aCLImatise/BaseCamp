version 1.0

task HiddenDomainsR {
  command <<<
    hiddenDomains_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}