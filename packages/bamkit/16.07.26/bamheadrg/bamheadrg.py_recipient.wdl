version 1.0

task BamheadrgpyRecipient {
  input {
    Boolean? s
    String? d
    String? r
  }
  command <<<
    bamheadrg_py recipient \
      ~{if (s) then "-S" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  parameter_meta {
    s: ""
    d: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}