version 1.0

task Subindel {
  input {
    String? o
    String? g
    File? i
  }
  command <<<
    subindel \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}