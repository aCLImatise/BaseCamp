version 1.0

task Puncsamfilesh {
  command <<<
    puncsamfile_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}