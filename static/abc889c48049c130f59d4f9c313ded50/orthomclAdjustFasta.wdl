version 1.0

task OrthomclAdjustFasta {
  input {
    String tax_on_code
    String fast_a_file
  }
  command <<<
    orthomclAdjustFasta \
      ~{tax_on_code} \
      ~{fast_a_file}
  >>>
  parameter_meta {
    tax_on_code: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}