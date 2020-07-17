version 1.0

task FastaptamerCompare {
  input {
    String? x
    String? y
    String? o
    Boolean? q
    Boolean? a
  }
  command <<<
    fastaptamer_compare \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-q" false="" q} \
      ~{true="-a" false="" a}
  >>>
  parameter_meta {
    x: ""
    y: ""
    o: ""
    q: ""
    a: ""
  }
}