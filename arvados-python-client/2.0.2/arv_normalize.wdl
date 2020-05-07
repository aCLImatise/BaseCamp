version 1.0

task ArvNormalize {
  input {
    String extractExtract
    Boolean stripStrip
  }
  command <<<
    arv-normalize \
      ~{if defined(extractExtract) then ("--extract " +  '"' + extractExtract + '"') else ""} \
      ~{true="--strip" false="" stripStrip}
  >>>
}