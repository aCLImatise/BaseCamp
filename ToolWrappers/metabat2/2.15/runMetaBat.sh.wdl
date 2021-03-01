version 1.0

task RunMetaBatsh {
  command <<<
    runMetaBat_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}