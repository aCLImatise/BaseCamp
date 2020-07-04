version 1.0

task RiboStructure {
  input {
    String? o
    String? g
    String? k
  }
  command <<<
    ribo structure \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    g: ""
    k: ""
  }
}