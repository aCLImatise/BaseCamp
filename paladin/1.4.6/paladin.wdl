version 1.0

task Paladin {
  command <<<
    paladin
  >>>
  output {
    File out_stdout = stdout()
  }
}