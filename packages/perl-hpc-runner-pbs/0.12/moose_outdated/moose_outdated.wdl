version 1.0

task Mooseoutdated {
  command <<<
    moose_outdated
  >>>
  output {
    File out_stdout = stdout()
  }
}