version 1.0

task GroupHumann2UnirefAbundancesToGOsh {
  input {
    File? path_file_uniref_gene
    Boolean? path_file_molecular
    Boolean? path_file_biological
    Boolean? path_file_cellular
    Boolean? path_basic_gene
    Boolean? path_basic_slim
    Boolean? path_file_humann_uniref
    Boolean? path_goatools_scripts
    Boolean? path_to_scripts
  }
  command <<<
    group_humann2_uniref_abundances_to_GO_sh \
      ~{if (path_file_uniref_gene) then "-i" else ""} \
      ~{if (path_file_molecular) then "-m" else ""} \
      ~{if (path_file_biological) then "-b" else ""} \
      ~{if (path_file_cellular) then "-c" else ""} \
      ~{if (path_basic_gene) then "-a" else ""} \
      ~{if (path_basic_slim) then "-s" else ""} \
      ~{if (path_file_humann_uniref) then "-u" else ""} \
      ~{if (path_goatools_scripts) then "-g" else ""} \
      ~{if (path_to_scripts) then "-p" else ""}
  >>>
  parameter_meta {
    path_file_uniref_gene: "Path to file with UniRef50 gene family abundance (HUMAnN2 output)"
    path_file_molecular: "Path to file which will contain GO slim term abudances corresponding to molecular functions"
    path_file_biological: "Path to file which will contain GO slim term abudances corresponding to biological processes"
    path_file_cellular: "Path to file which will contain GO slim term abudances corresponding to cellular components"
    path_basic_gene: "Path to basic Gene Ontology file"
    path_basic_slim: "Path to basic slim Gene Ontology file"
    path_file_humann_uniref: "Path to file with HUMAnN2 correspondance betwen UniRef50 and GO"
    path_goatools_scripts: "Path to GoaTools scripts"
    path_to_scripts: "Path to HUMAnN2 scripts"
  }
  output {
    File out_stdout = stdout()
    File out_path_file_uniref_gene = "${in_path_file_uniref_gene}"
  }
}