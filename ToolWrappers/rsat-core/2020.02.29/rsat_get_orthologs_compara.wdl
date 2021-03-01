version 1.0

task RsatGetorthologscompara {
  input {
    String? ref_org
    String get_orthologs_compara
    String ignored_dot
    String organisms_dot
    Int one_two_one_dot
    Int mdefinitionm_term_homoeologous
  }
  command <<<
    rsat get_orthologs_compara \
      ~{get_orthologs_compara} \
      ~{ignored_dot} \
      ~{organisms_dot} \
      ~{one_two_one_dot} \
      ~{mdefinitionm_term_homoeologous} \
      ~{if defined(ref_org) then ("-ref_org " +  '"' + ref_org + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_org: "\\"
    get_orthologs_compara: "[1mDESCRIPTION[0m"
    ignored_dot: "As for genes, the reference organisms can also be entered on the command"
    organisms_dot: "get-orthologs-compara -v 1 -supported_organisms \\"
    one_two_one_dot: "Note that in Compara polyploids such as wheat are separated by"
    mdefinitionm_term_homoeologous: "[33mDefinition[0m: the term homoeologous, also spelled homeologous, is"
  }
  output {
    File out_stdout = stdout()
  }
}