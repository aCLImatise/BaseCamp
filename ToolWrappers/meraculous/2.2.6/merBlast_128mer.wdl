version 1.0

task MerBlast128mer {
  input {
    String? contigs_file
    String? contigs_hash_file
    String? mer_size
    String? input_descriptor_file
    String? output_file_prefix
    String? num_threads
  }
  command <<<
    merBlast_128mer \
      ~{contigs_file} \
      ~{contigs_hash_file} \
      ~{mer_size} \
      ~{input_descriptor_file} \
      ~{output_file_prefix} \
      ~{num_threads}
  >>>
  parameter_meta {
    contigs_file: ""
    contigs_hash_file: ""
    mer_size: ""
    input_descriptor_file: ""
    output_file_prefix: ""
    num_threads: ""
  }
  output {
    File out_stdout = stdout()
  }
}