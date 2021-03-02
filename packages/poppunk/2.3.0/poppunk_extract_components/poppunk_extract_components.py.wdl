version 1.0

task PoppunkExtractComponentspy {
  input {
    String? graph
    String? prefix_output_files
    String extract_components
  }
  command <<<
    poppunk_extract_components_py \
      ~{extract_components} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    graph: "Input graph pickle (.gt)"
    prefix_output_files: "Prefix for output files"
    extract_components: ""
  }
  output {
    File out_stdout = stdout()
  }
}