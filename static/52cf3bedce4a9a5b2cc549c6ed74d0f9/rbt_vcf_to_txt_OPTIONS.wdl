version 1.0

task RbtVcfToTxtOPTIONS {
  input {
    String? flagsFlags
    String? optionsOptions
  }
  command <<<
    rbt vcf-to-txt OPTIONS \
      ~{flagsFlags} \
      ~{optionsOptions}
  >>>
}