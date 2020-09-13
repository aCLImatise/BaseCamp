version 1.0

task Rsemforebseqgeneratengvectorfromclusteringinfo {
  input {
    String input_file
    String output_file
  }
  command <<<
    rsem_for_ebseq_generate_ngvector_from_clustering_info \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}