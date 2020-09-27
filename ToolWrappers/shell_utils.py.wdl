version 1.0

task ShellUtilspy {
  command <<<
    shell_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}