version 1.0

task Rsemforebseqcalculateclusteringinfo {
  input {
    String k
    String input_reference_fast_a_file
    String output_file
  }
  command <<<
    rsem_for_ebseq_calculate_clustering_info \
      ~{k} \
      ~{input_reference_fast_a_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    k: ""
    input_reference_fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}