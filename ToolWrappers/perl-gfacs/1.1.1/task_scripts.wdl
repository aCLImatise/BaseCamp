version 1.0

task TaskScripts {
  command <<<
    task_scripts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}