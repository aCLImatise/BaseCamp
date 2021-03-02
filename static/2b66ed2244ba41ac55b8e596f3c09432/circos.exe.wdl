version 1.0

task Circosexe {
  command <<<
    circos_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}