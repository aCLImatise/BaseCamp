version 1.0

task BasicInfoPaserpy {
  command <<<
    BasicInfoPaser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}