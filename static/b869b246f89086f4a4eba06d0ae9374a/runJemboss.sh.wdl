version 1.0

task RunJembosssh {
  command <<<
    runJemboss_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}