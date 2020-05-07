version 1.0

task Gatk3Register {
  input {
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
  }
  command <<<
    gatk3-register \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero}
  >>>
}