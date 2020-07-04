version 1.0

task LoadBalanceMers.pl {
  input {
    String mer_count_file
    String num_of_prefix_blocks
  }
  command <<<
    loadBalanceMers.pl \
      ~{mer_count_file} \
      ~{num_of_prefix_blocks}
  >>>
  parameter_meta {
    mer_count_file: ""
    num_of_prefix_blocks: ""
  }
}