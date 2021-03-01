version 1.0

task Fcontrast {
  input {
    Boolean? vary_within
    Boolean? print_data
    File additional_optional_qualifiers
  }
  command <<<
    _fcontrast \
      ~{additional_optional_qualifiers} \
      ~{if (vary_within) then "-varywithin" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vary_within: "boolean    [N] Within-population variation in data"
    print_data: "boolean    [N] Print data at start of run"
    additional_optional_qualifiers: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}