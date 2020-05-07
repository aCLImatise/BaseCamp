version 1.0

task Dvipdf {
  input {
    String? optionsOptions
    String? inputInputDvi
    String? outputOutputPdf
  }
  command <<<
    dvipdf \
      ~{optionsOptions} \
      ~{inputInputDvi} \
      ~{outputOutputPdf}
  >>>
}