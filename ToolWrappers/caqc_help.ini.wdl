version 1.0

task CaqcHelpini {
  command <<<
    caqc_help_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}