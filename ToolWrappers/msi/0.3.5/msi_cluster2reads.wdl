version 1.0

task MsiCluster2reads {
  input {
    String? i
    Directory? o
    Boolean? d
    String? c
  }
  command <<<
    msi_cluster2reads \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    i: ""
    o: ""
    d: ""
    c: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
  }
}