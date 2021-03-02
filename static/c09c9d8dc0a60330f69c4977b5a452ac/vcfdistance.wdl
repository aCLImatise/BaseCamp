version 1.0

task Vcfdistance {
  input {
    String? custom_tag_name
  }
  command <<<
    vcfdistance \
      ~{custom_tag_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    custom_tag_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}