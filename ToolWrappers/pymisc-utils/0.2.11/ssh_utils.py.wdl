version 1.0

task SshUtilspy {
  command <<<
    ssh_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}