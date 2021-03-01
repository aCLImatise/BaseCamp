version 1.0

task MergraphTh56mer {
  input {
    String? mer_count_file_prefix
    String? mer_size
    String? min_depth
    String? prefix_list_to_hash
    String? num_threads
    String? qual_offset
    String? output_prefix
    String? input_descriptor_file
  }
  command <<<
    mergraphTh_56mer \
      ~{mer_count_file_prefix} \
      ~{mer_size} \
      ~{min_depth} \
      ~{prefix_list_to_hash} \
      ~{num_threads} \
      ~{qual_offset} \
      ~{output_prefix} \
      ~{input_descriptor_file}
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
    qual_offset: ""
    output_prefix: ""
    input_descriptor_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}