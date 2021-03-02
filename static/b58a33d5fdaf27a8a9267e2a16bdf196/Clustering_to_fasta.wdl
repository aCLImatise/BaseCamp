version 1.0

task ClusteringTofasta {
  input {
    String to_fast_a
    File input_file
    String? mask_seq_id
  }
  command <<<
    Clustering to_fasta \
      ~{to_fast_a} \
      ~{input_file} \
      ~{mask_seq_id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to_fast_a: ""
    input_file: ""
    mask_seq_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}