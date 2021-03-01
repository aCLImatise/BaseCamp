version 1.0

task ShellUtilspy {
  command <<<
    shell_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}