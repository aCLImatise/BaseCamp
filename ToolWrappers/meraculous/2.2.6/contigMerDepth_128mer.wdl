version 1.0

task ContigMerDepth128mer {
  input {
    String? mer_count_file_prefix
    String? mer_size
    String? min_depth
    String? prefix_list_to_hash
    String? num_threads
    String? output_prefix
    String? contigs_file
  }
  command <<<
    contigMerDepth_128mer \
      ~{mer_count_file_prefix} \
      ~{mer_size} \
      ~{min_depth} \
      ~{prefix_list_to_hash} \
      ~{num_threads} \
      ~{output_prefix} \
      ~{contigs_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer_count_file_prefix: ""
    mer_size: ""
    min_depth: ""
    prefix_list_to_hash: ""
    num_threads: ""
    output_prefix: ""
    contigs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}