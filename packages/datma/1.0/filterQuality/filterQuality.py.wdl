version 1.0

task FilterQualitypy {
  command <<<
    filterQuality_py
  >>>
  output {
    File out_stdout = stdout()
  }
}