version 1.0

task DeBGAAln {
  input {
    String index_route
    String read_pair_end_one_dot_fq
    String? read
    String? pair_end_two_dot_fq
    String result_file_dots_am
  }
  command <<<
    deBGA aln \
      ~{index_route} \
      ~{read_pair_end_one_dot_fq} \
      ~{read} \
      ~{pair_end_two_dot_fq} \
      ~{result_file_dots_am}
  >>>
  parameter_meta {
    index_route: ""
    read_pair_end_one_dot_fq: ""
    read: ""
    pair_end_two_dot_fq: ""
    result_file_dots_am: ""
  }
}