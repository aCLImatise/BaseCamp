version 1.0

task Vcfnormalizesvs {
  input {
    Boolean rR
    Boolean iI
    String? optionsOptions
    String? varVarVcf
  }
  command <<<
    vcfnormalizesvs \
      ~{optionsOptions} \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{varVarVcf}
  >>>
}