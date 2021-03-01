version 1.0

task Density {
  input {
    Boolean? window
    Boolean? display
  }
  command <<<
    density \
      ~{if (window) then "-window" else ""} \
      ~{if (display) then "-display" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window: "integer    [100] Window length (Integer 1 or more)"
    display: "menu       [none] Select graph type (Values: D (Dual -\\ngraphic showing individual bases); Q (Quad -\\nAT vs GC graphic); none (none))"
  }
  output {
    File out_stdout = stdout()
  }
}