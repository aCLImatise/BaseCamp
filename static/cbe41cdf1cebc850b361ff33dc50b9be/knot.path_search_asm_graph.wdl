version 1.0

task KnotpathSearchAsmGraph {
  input {
    Boolean? self_lookup
    String? search_mode
    String knot_dot_path_search
  }
  command <<<
    knot_path_search asm_graph \
      ~{knot_dot_path_search} \
      ~{if (self_lookup) then "--self-lookup" else ""} \
      ~{if defined(search_mode) then ("--search-mode " +  '"' + search_mode + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0"
  }
  parameter_meta {
    self_lookup: ""
    search_mode: ""
    knot_dot_path_search: ""
  }
  output {
    File out_stdout = stdout()
  }
}