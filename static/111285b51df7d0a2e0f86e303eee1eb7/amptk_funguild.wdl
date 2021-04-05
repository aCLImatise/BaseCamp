version 1.0

task AmptkFunguild {
  input {
    String? o
    String? d
    Boolean? u
    Boolean? m
    String? i
    String am_ptk
  }
  command <<<
    amptk funguild \
      ~{am_ptk} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (u) then "-u" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    o: ""
    d: ""
    u: ""
    m: ""
    i: ""
    am_ptk: ""
  }
  output {
    File out_stdout = stdout()
  }
}