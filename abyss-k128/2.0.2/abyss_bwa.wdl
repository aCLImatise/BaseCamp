version 1.0

task Abyssbwa {
  command <<<
    abyss_bwa
  >>>
  output {
    File out_stdout = stdout()
  }
}