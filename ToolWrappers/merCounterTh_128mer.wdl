version 1.0

task MerCounterTh128mer {
  input {
    String? mer_size
    String? min_count_to_report
    String? num_threads
    String? prefix_list_to_hash
    String? output_prefix
    String? fast_q_descriptor_file
    String? trim_flag
  }
  command <<<
    merCounterTh_128mer \
      ~{mer_size} \
      ~{min_count_to_report} \
      ~{num_threads} \
      ~{prefix_list_to_hash} \
      ~{output_prefix} \
      ~{fast_q_descriptor_file} \
      ~{trim_flag}
  >>>
  parameter_meta {
    mer_size: ""
    min_count_to_report: ""
    num_threads: ""
    prefix_list_to_hash: ""
    output_prefix: ""
    fast_q_descriptor_file: ""
    trim_flag: ""
  }
  output {
    File out_stdout = stdout()
  }
}