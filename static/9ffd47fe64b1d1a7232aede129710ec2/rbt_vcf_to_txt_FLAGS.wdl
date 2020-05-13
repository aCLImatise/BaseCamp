version 1.0

task RbtVcfToTxtFLAGS {
  input {
    String? optionsOptions
  }
  command <<<
    rbt vcf-to-txt FLAGS \
      ~{optionsOptions}
  >>>
}