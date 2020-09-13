version 1.0

task Blacksheep {
  command <<<
    blacksheep
  >>>
  output {
    File out_stdout = stdout()
  }
}