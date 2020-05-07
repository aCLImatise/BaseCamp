version 1.0

task NgsDisambiguate {
  input {
    String? ngsNgsDisambiguate
  }
  command <<<
    ngs_disambiguate \
      ~{ngsNgsDisambiguate}
  >>>
}