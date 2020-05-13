version 1.0

task Basename {
  input {
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
  }
  command <<<
    basename \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero}
  >>>
}