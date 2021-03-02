version 1.0

task MaxQuantServerexe {
  command <<<
    MaxQuantServer_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}