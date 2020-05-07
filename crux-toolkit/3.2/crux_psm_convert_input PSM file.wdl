version 1.0

task CruxPsmConvertInput PSM file {
  input {
    String? outputOutputFormat
  }
  command <<<
    crux psm-convert input PSM file \
      ~{outputOutputFormat}
  >>>
}