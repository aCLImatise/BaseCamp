version 1.0

task RsemForEbseqGenerateNgvectorFromClusteringInfo {
  input {
    String input_file
    String output_file
  }
  command <<<
    rsem-for-ebseq-generate-ngvector-from-clustering-info \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    input_file: ""
    output_file: ""
  }
}