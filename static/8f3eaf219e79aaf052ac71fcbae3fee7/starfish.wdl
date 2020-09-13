version 1.0

task Starfish {
  command <<<
    starfish
  >>>
  output {
    File out_stdout = stdout()
  }
}