version 1.0

task MulticolumnLabelEncoderpy {
  command <<<
    multicolumn_label_encoder_py
  >>>
  output {
    File out_stdout = stdout()
  }
}