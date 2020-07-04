version 1.0

task MerfishtoolsEstErrorRates {
  input {
    String tsv_file
    String raw_data
  }
  command <<<
    merfishtools est-error-rates \
      ~{tsv_file} \
      ~{raw_data}
  >>>
  parameter_meta {
    tsv_file: ""
    raw_data: ""
  }
}