version 1.0

task CaqcHelpini {
  command <<<
    caqc_help_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}