version 1.0

task NovoalignLicenseRegister {
  input {
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
  }
  command <<<
    novoalign-license-register \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero}
  >>>
}