version 1.0

task AutoRunpathInfo {
  command <<<
    autoRun_pathInfo
  >>>
  output {
    File out_stdout = stdout()
  }
}