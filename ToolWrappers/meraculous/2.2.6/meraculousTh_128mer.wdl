version 1.0

task MeraculousTh128mer {
  input {
    String? u_fx_file_wildcard
    String? mer_size
    String? num_threads
    String? output_file
    String? expected_num_elements
    Int? min
    String? contig
    Int? size
    String? debug_mode
    String? seed_list_filename
  }
  command <<<
    meraculousTh_128mer \
      ~{u_fx_file_wildcard} \
      ~{mer_size} \
      ~{num_threads} \
      ~{output_file} \
      ~{expected_num_elements} \
      ~{min} \
      ~{contig} \
      ~{size} \
      ~{debug_mode} \
      ~{seed_list_filename}
  >>>
  parameter_meta {
    u_fx_file_wildcard: ""
    mer_size: ""
    num_threads: ""
    output_file: ""
    expected_num_elements: ""
    min: ""
    contig: ""
    size: ""
    debug_mode: ""
    seed_list_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}