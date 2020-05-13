version 1.0

task MerfishtoolsEstErrorRatesTSVFILE {
  input {
    String? rawRawData
  }
  command <<<
    merfishtools est-error-rates TSV-FILE \
      ~{rawRawData}
  >>>
}