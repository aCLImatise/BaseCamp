version 1.0

task FilterInput.py {
  input {
    String paired_end_one_dot_fast_a
    String paired_end_two_dot_fast_a
    String output_dir
    String cm_dir
    String cm_to_use
    String num_of_cpu
  }
  command <<<
    filter_input.py \
      ~{paired_end_one_dot_fast_a} \
      ~{paired_end_two_dot_fast_a} \
      ~{output_dir} \
      ~{cm_dir} \
      ~{cm_to_use} \
      ~{num_of_cpu}
  >>>
  parameter_meta {
    paired_end_one_dot_fast_a: ""
    paired_end_two_dot_fast_a: ""
    output_dir: ""
    cm_dir: ""
    cm_to_use: ""
    num_of_cpu: ""
  }
}