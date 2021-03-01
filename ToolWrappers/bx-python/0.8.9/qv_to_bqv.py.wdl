version 1.0

task QvToBqvpy {
  input {
    String qual_file
    String output_file
  }
  command <<<
    qv_to_bqv_py \
      ~{qual_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    qual_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}