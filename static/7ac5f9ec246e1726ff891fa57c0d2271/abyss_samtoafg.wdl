version 1.0

task Abysssamtoafg {
  command <<<
    abyss_samtoafg
  >>>
  output {
    File out_stdout = stdout()
  }
}