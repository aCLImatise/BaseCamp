version 1.0

task Ribotapersh {
  command <<<
    Ribotaper_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}