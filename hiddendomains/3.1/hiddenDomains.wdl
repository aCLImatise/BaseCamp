version 1.0

task HiddenDomains {
  input {
    String? g
    String? t
    String? o
  }
  command <<<
    hiddenDomains \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    t: ""
    o: ""
  }
}