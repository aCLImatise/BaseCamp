version 1.0

task Ribosum2cc {
  input {
    String ribo_sum_name
    File ribo_sum_file
  }
  command <<<
    ribosum2cc \
      ~{ribo_sum_name} \
      ~{ribo_sum_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ribo_sum_name: ""
    ribo_sum_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}