version 1.0

task AnviscriptgenStatsForSingleCopyGenespy {
  input {
    Boolean? list_sources
    String? source
  }
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_py \
      ~{if (list_sources) then "--list-sources" else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    list_sources: "Show available single-copy gene search results and exit.\\n(default: False)"
    source: "Source to focus on. If none declared, all single-copy gene\\nsources are going to be listed. (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}