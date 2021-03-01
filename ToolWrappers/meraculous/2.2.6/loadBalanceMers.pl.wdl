version 1.0

task LoadBalanceMerspl {
  input {
    String mer_count_file
    String num_of_prefix_blocks
  }
  command <<<
    loadBalanceMers_pl \
      ~{mer_count_file} \
      ~{num_of_prefix_blocks}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer_count_file: ""
    num_of_prefix_blocks: ""
  }
  output {
    File out_stdout = stdout()
  }
}