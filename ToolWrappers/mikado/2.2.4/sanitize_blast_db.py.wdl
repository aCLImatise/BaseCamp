version 1.0

task SanitizeBlastDbpy {
  input {
    String? o
    String? ml
    String fast_a
  }
  command <<<
    sanitize_blast_db_py \
      ~{fast_a} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(ml) then ("-ml " +  '"' + ml + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
  }
  parameter_meta {
    o: ""
    ml: ""
    fast_a: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}