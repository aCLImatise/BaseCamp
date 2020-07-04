version 1.0

task Mcxload {
  input {
    String? abc
    String? o
  }
  command <<<
    mcxload \
      ~{if defined(abc) then ("-abc " +  '"' + abc + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    abc: ""
    o: ""
  }
}