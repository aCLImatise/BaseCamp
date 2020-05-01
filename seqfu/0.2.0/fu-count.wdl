version 1.0

task FuCount {
  input {
    String? fFQc
    File? fileFile1
    File? fileFileN
  }
  command <<<
    fu-count \
      ~{fFQc} \
      ~{fileFile1} \
      ~{fileFileN}
  >>>
}