version 1.0

task ExpansionHunterDenovo {
  command <<<
    ExpansionHunterDenovo
  >>>
  output {
    File out_stdout = stdout()
  }
}