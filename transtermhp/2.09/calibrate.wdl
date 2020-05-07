version 1.0

task Calibrate.sh {
  input {
    String? outputOutputFiledAt
    String? transTransTerm
  }
  command <<<
    calibrate.sh \
      ~{outputOutputFiledAt} \
      ~{transTransTerm}
  >>>
}