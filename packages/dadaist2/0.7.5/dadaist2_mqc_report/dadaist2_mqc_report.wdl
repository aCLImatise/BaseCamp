version 1.0

task Dadaist2mqcreport {
  input {
    String? o
    String? l
    String? t
    String? i
  }
  command <<<
    dadaist2_mqc_report \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.5--0"
  }
  parameter_meta {
    o: ""
    l: ""
    t: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}