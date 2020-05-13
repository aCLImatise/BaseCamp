version 1.0

task TbvcfreportGenerateVCFDIR {
  input {
    String? optionsOptions
    String? vcfVcfDir
  }
  command <<<
    tbvcfreport generate VCF_DIR \
      ~{optionsOptions} \
      ~{vcfVcfDir}
  >>>
}