version 1.0

task RefgenieAddAssetregistrypaths {
  input {
    String? s
    String? p
    Boolean? f
    String? g
    Boolean? skip_read_lock
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
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    s: ""
    p: ""
    f: ""
    g: ""
    skip_read_lock: ""
    c: ""
    ref_genie: ""
    add: ""
  }
  output {
    File out_stdout = stdout()
  }
}