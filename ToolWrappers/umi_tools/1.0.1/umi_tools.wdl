version 1.0

task UmiTools {
  command <<<
    umi_tools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}