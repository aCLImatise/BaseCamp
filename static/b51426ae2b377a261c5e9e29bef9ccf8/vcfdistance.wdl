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
    docker: "None"
  }
  parameter_meta {
    custom_tag_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}