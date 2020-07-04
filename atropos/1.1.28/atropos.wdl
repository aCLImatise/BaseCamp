version 1.0

task Atropos {
  input {
    String? a
    String? o
    String? se
  }
  command <<<
    atropos \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(se) then ("-se " +  '"' + se + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    o: ""
    se: ""
  }
}