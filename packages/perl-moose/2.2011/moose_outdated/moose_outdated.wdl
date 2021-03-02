version 1.0

task Mooseoutdated {
  command <<<
    moose_outdated
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}