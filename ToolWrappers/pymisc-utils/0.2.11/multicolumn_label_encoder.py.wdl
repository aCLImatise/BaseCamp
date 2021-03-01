version 1.0

task MulticolumnLabelEncoderpy {
  command <<<
    multicolumn_label_encoder_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}