version 1.0

task EvalPredictions {
  input {
    String? l
    String? required_list_real
    String? required_list_predicted
    String? list_bydefault_equal
    File? dump_full_coords
    String? also_report_stats
  }
  command <<<
    eval_predictions \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(required_list_real) then ("-r " +  '"' + required_list_real + '"') else ""} \
      ~{if defined(required_list_predicted) then ("-p " +  '"' + required_list_predicted + '"') else ""} \
      ~{if defined(list_bydefault_equal) then ("-f " +  '"' + list_bydefault_equal + '"') else ""} \
      ~{if defined(dump_full_coords) then ("-d " +  '"' + dump_full_coords + '"') else ""} \
      ~{if defined(also_report_stats) then ("-n " +  '"' + also_report_stats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    l: "[OPTIONS]"
    required_list_real: "(required) List of names of files defining real genes (GFF)."
    required_list_predicted: "(required) List of names of files defining predicted genes\\n(GFF).  Must correspond in order to <real_fname_list>."
    list_bydefault_equal: "List of names of all features denoting exon regions.  By\\ndefault, equal to the single name \\\"CDS\\\"."
    dump_full_coords: "Dump full coords of correct, partially correct, wrong, missed,\\nand overlapping exons to a set of files having the specified\\nfile name prefix."
    also_report_stats: "Also report stats on \\\"nearly correct\\\" exons, that is, incorrect\\nexons whose boundaries are within <nbases> of being correct.\\nColumns will be labeled \\\"NCa\\\" and \\\"NCp\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}