version 1.0

task Density {
  input {
    String? r_format
    Boolean? window
    Boolean? display
  }
  command <<<
    density \
      ~{if defined(r_format) then ("-rformat " +  '"' + r_format + '"') else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (display) then "-display" else ""}
  >>>
  parameter_meta {
    r_format: ")"
    window: "integer    [100] Window length (Integer 1 or more)"
    display: "menu       [none] Select graph type (Values: D (Dual -\\ngraphic showing individual bases); Q (Quad -\\nAT vs GC graphic); none (none))"
  }
  output {
    File out_stdout = stdout()
  }
}