version 1.0

task MerfishtoolsEstErrorRatesRAWDATA {
  input {
    String? tsvTsvFile
    String? rawRawData
  }
  command <<<
    merfishtools est-error-rates RAW-DATA \
      ~{tsvTsvFile} \
      ~{rawRawData}
  >>>
}