version 1.0

task Mirdeep2bedpl {
  command <<<
    mirdeep2bed_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}