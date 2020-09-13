version 1.0

task Fcontrast {
  input {
    Boolean? vary_within
    Boolean? print_data
    File file
  }
  command <<<
    _fcontrast \
      ~{file} \
      ~{if (vary_within) then "-varywithin" else ""} \
      ~{if (print_data) then "-printdata" else ""}
  >>>
  parameter_meta {
    vary_within: "boolean    [N] Within-population variation in data"
    print_data: "boolean    [N] Print data at start of run"
    file: "Additional (Optional) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
  }
}