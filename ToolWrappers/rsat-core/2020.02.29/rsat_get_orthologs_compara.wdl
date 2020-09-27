version 1.0

task RsatGetorthologscompara {
  input {
    Float? mget_orthologs_v
    String get_orthologs_compara
    String ignored_dot
    Int one_two_one_dot
    Int mdefinitionm_term_homoeologous
  }
  command <<<
    rsat get_orthologs_compara \
      ~{get_orthologs_compara} \
      ~{ignored_dot} \
      ~{one_two_one_dot} \
      ~{mdefinitionm_term_homoeologous} \
      ~{if defined(mget_orthologs_v) then ("-o " +  '"' + mget_orthologs_v + '"') else ""}
  >>>
  parameter_meta {
    mget_orthologs_v: "[1mGet orthologs from a query gene in a list of reference genomes[0m\\nget-orthologs-compara -v 1 -org_list compara_organisms.tab \\\\n-type ortholog -q AT5G45730.1\\n[1mGet all orthologs from a query genome, shortening genome names[0m\\nget-orthologs-compara -query_org brachypodium_distachyon \\\\n-ref_org arabidopsis_thaliana -short -o brachy.thaliana.tab\\n[1mGet paralogs for all genes of Arabidopsis thaliana in its own genome (inparalogues)[0m\\nget-orthologs-compara -query_org arabidopsis_thaliana \\\\n-ref_org arabidopsis_thaliana -type paralog\\n[1mGet homeologs within the wheat genome with stringent identity cut-off values[0m\\nget-orthologs-compara -query_org triticum_aestivum \\\\n-ref_org triticum_aestivum -type homeolog \\\\n-ident_query 70 -ident_target 70"
    get_orthologs_compara: "[1mDESCRIPTION[0m"
    ignored_dot: "As for genes, the reference organisms can also be entered on the command"
    one_two_one_dot: "Note that in Compara polyploids such as wheat are separated by"
    mdefinitionm_term_homoeologous: "[33mDefinition[0m: the term homoeologous, also spelled homeologous, is"
  }
  output {
    File out_stdout = stdout()
  }
}