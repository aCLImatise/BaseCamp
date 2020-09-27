version 1.0

task RunTippToolpy {
  input {
    String? p
    String? o
    String? a
    String? g
  }
  command <<<
    run_tipp_tool_py \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    o: ""
    a: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}