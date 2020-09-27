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
  parameter_meta {
    list_sources: "Show available single-copy gene search results and exit."
    source: "Source to focus on. If none declared, all single-copy gene\\nsources are going to be listed.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}