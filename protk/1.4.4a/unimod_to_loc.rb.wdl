version 1.0

task UnimodToLocrb {
  command <<<
    unimod_to_loc_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}