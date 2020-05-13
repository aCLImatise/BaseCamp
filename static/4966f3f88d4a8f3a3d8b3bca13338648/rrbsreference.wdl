version 1.0

task Rrbsreference {
  input {
    String? refRefNix
    Int? maxlengthMaxlength
    String? ccggCcggTsv
    String? rrbsRrbsMaskedReFfa
  }
  command <<<
    rrbsreference \
      ~{refRefNix} \
      ~{maxlengthMaxlength} \
      ~{ccggCcggTsv} \
      ~{rrbsRrbsMaskedReFfa}
  >>>
}