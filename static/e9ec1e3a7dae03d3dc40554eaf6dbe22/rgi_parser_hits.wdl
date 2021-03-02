version 1.0

task RgiParserHits {
  input {
    String? t
    Boolean? include_loose
    String? o
    String? i
    String rgi
    String parser
  }
  command <<<
    rgi parser hits \
      ~{rgi} \
      ~{parser} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (include_loose) then "--include_loose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    include_loose: ""
    o: ""
    i: ""
    rgi: ""
    parser: ""
  }
  output {
    File out_stdout = stdout()
  }
}