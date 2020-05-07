version 1.0

task CruxPsmConvertOutput format {
  input {
    String? inputInputPsmFile
    String? outputOutputFormat
  }
  command <<<
    crux psm-convert output format \
      ~{inputInputPsmFile} \
      ~{outputOutputFormat}
  >>>
}