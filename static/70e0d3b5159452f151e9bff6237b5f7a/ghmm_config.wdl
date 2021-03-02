version 1.0

task Ghmmconfig {
  command <<<
    ghmm_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}