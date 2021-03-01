version 1.0

task Sstofa {
  input {
    File sec_struct_file
  }
  command <<<
    sstofa \
      ~{sec_struct_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0"
  }
  parameter_meta {
    sec_struct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}