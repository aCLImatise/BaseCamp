version 1.0

task EvalPredictions {
  input {
    String? l
    String? required_list_real
    String? predicted_predicted_correspond
    String? list_names_equal
    File? dump_full_coords
    String? also_report_labeled
  }
  command <<<
    eval_predictions \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(required_list_real) then ("-r " +  '"' + required_list_real + '"') else ""} \
      ~{if defined(predicted_predicted_correspond) then ("-p " +  '"' + predicted_predicted_correspond + '"') else ""} \
      ~{if defined(list_names_equal) then ("-f " +  '"' + list_names_equal + '"') else ""} \
      ~{if defined(dump_full_coords) then ("-d " +  '"' + dump_full_coords + '"') else ""} \
      ~{if defined(also_report_labeled) then ("-n " +  '"' + also_report_labeled + '"') else ""}
  >>>
  parameter_meta {
    l: "[OPTIONS]"
    required_list_real: "(required) List of names of files defining real genes (GFF)."
    predicted_predicted_correspond: "(required) List of names of files defining predicted genes\\n(GFF).  Must correspond in order to <real_fname_list>."
    list_names_equal: "List of names of all features denoting exon regions.  By\\ndefault, equal to the single name \\\"CDS\\\"."
    dump_full_coords: "Dump full coords of correct, partially correct, wrong, missed,\\nand overlapping exons to a set of files having the specified\\nfile name prefix."
    also_report_labeled: "Also report stats on \\\"nearly correct\\\" exons, that is, incorrect\\nexons whose boundaries are within <nbases> of being correct.\\nColumns will be labeled \\\"NCa\\\" and \\\"NCp\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}