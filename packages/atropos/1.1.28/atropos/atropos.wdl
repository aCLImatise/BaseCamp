version 1.0

task Atropos {
  input {
    String? se
    String? o
    String? a
  }
  command <<<
    atropos \
      ~{if defined(se) then ("-se " +  '"' + se + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    se: ""
    o: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}