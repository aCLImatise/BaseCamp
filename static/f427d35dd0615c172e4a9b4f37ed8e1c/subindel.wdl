version 1.0

task Subindel {
  input {
    String? i
    String? g
    String? o
  }
  command <<<
    subindel \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    g: ""
    o: ""
  }
}