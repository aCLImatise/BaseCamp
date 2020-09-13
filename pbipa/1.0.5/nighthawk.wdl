version 1.0

task Nighthawk {
  command <<<
    nighthawk
  >>>
  output {
    File out_stdout = stdout()
  }
}