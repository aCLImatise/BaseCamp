version 1.0

task RefgenieAddAssetregistrypaths {
  input {
    String? s
    String? p
    Boolean? f
    String? g
    String? c
    String ref_genie
    String add
  }
  command <<<
    refgenie add asset_registry_paths \
      ~{ref_genie} \
      ~{add} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.9.3--py_0"
  }
  parameter_meta {
    s: ""
    p: ""
    f: ""
    g: ""
    c: ""
    ref_genie: ""
    add: ""
  }
  output {
    File out_stdout = stdout()
  }
}