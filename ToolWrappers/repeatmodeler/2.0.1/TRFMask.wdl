version 1.0

task TRFMask {
  input {
    String repeat_modeler
  }
  command <<<
    TRFMask \
      ~{repeat_modeler}
  >>>
  parameter_meta {
    repeat_modeler: "COPYRIGHT"
  }
  output {
    File out_stdout = stdout()
  }
}