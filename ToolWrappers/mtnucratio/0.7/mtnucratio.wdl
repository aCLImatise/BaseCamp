version 1.0

task Mtnucratio {
  command <<<
    mtnucratio
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}