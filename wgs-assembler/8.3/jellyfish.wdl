version 1.0

task Jellyfish {
  command <<<
    jellyfish
  >>>
  output {
    File out_stdout = stdout()
  }
}