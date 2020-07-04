version 1.0

task FastaptamerEnrich {
  input {
    String? x
    String? y
    String? z
    String? o
  }
  command <<<
    fastaptamer_enrich \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    x: ""
    y: ""
    z: ""
    o: ""
  }
}