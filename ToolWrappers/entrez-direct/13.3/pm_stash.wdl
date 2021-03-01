version 1.0

task Pmstash {
  command <<<
    pm_stash
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}