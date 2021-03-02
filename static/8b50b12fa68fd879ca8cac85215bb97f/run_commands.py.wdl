version 1.0

task RunCommandspy {
  command <<<
    run_commands_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}