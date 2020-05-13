version 1.0

task VcfFixNewlines {
  input {
    Boolean infoInfo
    String? optionsOptions
  }
  command <<<
    vcf-fix-newlines \
      ~{optionsOptions} \
      ~{true="--info" false="" infoInfo}
  >>>
}