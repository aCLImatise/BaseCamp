version 1.0

task Cgb2ctg {
  input {
    String? extensionExtension
  }
  command <<<
    cgb2ctg \
      ~{extensionExtension}
  >>>
}