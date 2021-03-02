version 1.0

task Gbmunge {
  input {
    Boolean? s
    Boolean? t
    String? o
    String? f
    File? i
  }
  command <<<
    gbmunge \
      ~{if (s) then "-s" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s: ""
    t: ""
    o: ""
    f: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}