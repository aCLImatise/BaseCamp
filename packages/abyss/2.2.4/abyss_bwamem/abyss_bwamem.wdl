version 1.0

task Abyssbwamem {
  command <<<
    abyss_bwamem
  >>>
  output {
    File out_stdout = stdout()
  }
}