version 1.0

task Qax {
  input {
    String list
    String? input_file
  }
  command <<<
    qax \
      ~{list} \
      ~{input_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/qax:0.9.2--hed695b0_0"
  }
  parameter_meta {
    list: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}