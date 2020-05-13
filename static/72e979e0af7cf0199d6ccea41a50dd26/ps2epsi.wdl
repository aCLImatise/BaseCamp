version 1.0

task Ps2epsi {
  input {
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
    Boolean dictDict
    Boolean multipleMultiple
    String suffixSuffix
    Boolean zeroZero
  }
  command <<<
    ps2epsi \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero} \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero} \
      ~{true="--dict" false="" dictDict} \
      ~{true="--multiple" false="" multipleMultiple} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--zero" false="" zeroZero}
  >>>
}