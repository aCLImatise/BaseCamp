version 1.0

task Distmat {
  input {
    File additional_optional_qualifiers
  }
  command <<<
    distmat \
      ~{additional_optional_qualifiers}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}