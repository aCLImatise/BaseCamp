version 1.0

task FastaptamerCompare {
  input {
    Boolean? a
    Boolean? q
    String? o
    File? y
    File? x
  }
  command <<<
    fastaptamer_compare \
      ~{if (a) then "-a" else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a: ""
    q: ""
    o: ""
    y: ""
    x: ""
  }
  output {
    File out_stdout = stdout()
  }
}