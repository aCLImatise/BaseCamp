version 1.0

task Abyssbwasw {
  command <<<
    abyss_bwasw
  >>>
  output {
    File out_stdout = stdout()
  }
}