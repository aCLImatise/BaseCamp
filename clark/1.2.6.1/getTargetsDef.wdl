version 1.0

task GetTargetsDef {
  input {
    String files_to_tax_ids
  }
  command <<<
    getTargetsDef \
      ~{files_to_tax_ids}
  >>>
  parameter_meta {
    files_to_tax_ids: ""
  }
  output {
    File out_stdout = stdout()
  }
}