version 1.0

task FCSConvertR {
  command <<<
    FCSConvert_R
  >>>
  output {
    File out_stdout = stdout()
  }
}