version 1.0

task FastaptamerSearch {
  input {
    String? p
    String? o
    File? i
  }
  command <<<
    fastaptamer_search \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}