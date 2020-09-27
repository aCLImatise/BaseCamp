version 1.0

task Mirdeep2bedplorig {
  command <<<
    mirdeep2bed_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}