version 1.0

task ChromHMMsh {
  command <<<
    ChromHMM_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}