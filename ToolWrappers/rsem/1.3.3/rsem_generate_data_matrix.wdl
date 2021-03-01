version 1.0

task Rsemgeneratedatamatrix {
  input {
    String sample_a_dot
  }
  command <<<
    rsem_generate_data_matrix \
      ~{sample_a_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_a_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}