version 1.0

task Bpipeutilssh {
  command <<<
    bpipe_utils_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}