version 1.0

task Ghmmconfig {
  command <<<
    ghmm_config
  >>>
  output {
    File out_stdout = stdout()
  }
}