version 1.0

task FCSConvertR {
  command <<<
    FCSConvert_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}