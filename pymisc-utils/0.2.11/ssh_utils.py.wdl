version 1.0

task SshUtilspy {
  command <<<
    ssh_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}