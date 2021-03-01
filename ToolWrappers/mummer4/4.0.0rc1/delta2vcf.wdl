version 1.0

task Delta2vcf {
  input {
    File file_dot_delta
    File file_dot_vcf
  }
  command <<<
    delta2vcf \
      ~{file_dot_delta} \
      ~{file_dot_vcf}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  parameter_meta {
    file_dot_delta: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}