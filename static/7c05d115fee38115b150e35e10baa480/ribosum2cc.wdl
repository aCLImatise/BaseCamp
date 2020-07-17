version 1.0

task Ribosum2cc {
  input {
    String ribo_sum_name
    String ribo_sum_file
  }
  command <<<
    ribosum2cc \
      ~{ribo_sum_name} \
      ~{ribo_sum_file}
  >>>
  parameter_meta {
    ribo_sum_name: ""
    ribo_sum_file: ""
  }
}