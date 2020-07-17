version 1.0

task ITSx {
  input {
    String? i
    String? o
  }
  command <<<
    ITSx \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
  }
}