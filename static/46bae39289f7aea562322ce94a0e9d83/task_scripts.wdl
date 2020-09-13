version 1.0

task TaskScripts {
  command <<<
    task_scripts
  >>>
  output {
    File out_stdout = stdout()
  }
}