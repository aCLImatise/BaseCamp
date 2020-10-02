version 1.0

task Entropyprofile {
  command <<<
    entropy_profile
  >>>
  output {
    File out_stdout = stdout()
  }
}