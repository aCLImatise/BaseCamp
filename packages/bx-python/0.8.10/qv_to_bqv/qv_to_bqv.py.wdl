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
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    qual_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}