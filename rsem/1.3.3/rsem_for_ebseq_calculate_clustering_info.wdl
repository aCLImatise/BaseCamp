version 1.0

task RsemForEbseqCalculateClusteringInfo {
  input {
    String k
    String input_reference_fast_a_file
    String output_file
  }
  command <<<
    rsem-for-ebseq-calculate-clustering-info \
      ~{k} \
      ~{input_reference_fast_a_file} \
      ~{output_file}
  >>>
  parameter_meta {
    k: ""
    input_reference_fast_a_file: ""
    output_file: ""
  }
}