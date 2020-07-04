version 1.0

task StacksIntegrateAlignments {
  input {
    String? p
    String? b
    String? o
  }
  command <<<
    stacks-integrate-alignments \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    b: ""
    o: ""
  }
}