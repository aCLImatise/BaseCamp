version 1.0

task Mafftprofile {
  command <<<
    mafft_profile
  >>>
  output {
    File out_stdout = stdout()
  }
}