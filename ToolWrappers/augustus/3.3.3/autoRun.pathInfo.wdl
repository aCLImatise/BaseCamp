version 1.0

task AutoRunpathInfo {
  command <<<
    autoRun_pathInfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}