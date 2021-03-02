version 1.0

task Dagchainer {
  input {
    Boolean? r
    File? f
    Int? d
    Int? s
    String? e
    String? o
    Int? g
  }
  command <<<
    dagchainer \
      ~{if (r) then "-r" else ""} \
      ~{if defined(f) then ("-F " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-D " +  '"' + d + '"') else ""} \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dagchainer:r120920--hc9558a2_0"
  }
  parameter_meta {
    r: ""
    f: ""
    d: ""
    s: ""
    e: ""
    o: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}