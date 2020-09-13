version 1.0

task BasicInfoPaserpy {
  command <<<
    BasicInfoPaser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}