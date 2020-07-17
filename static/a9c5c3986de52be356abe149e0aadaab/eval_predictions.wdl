version 1.0

task EvalPredictions {
  input {
    String? l
    String? required_list_real
    String? required_list_predicted
    String? list_names_features
    String? dump_full_coords
    String? also_report_stats
  }
  command <<<
    eval_predictions \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(required_list_real) then ("-r " +  '"' + required_list_real + '"') else ""} \
      ~{if defined(required_list_predicted) then ("-p " +  '"' + required_list_predicted + '"') else ""} \
      ~{if defined(list_names_features) then ("-f " +  '"' + list_names_features + '"') else ""} \
      ~{if defined(dump_full_coords) then ("-d " +  '"' + dump_full_coords + '"') else ""} \
      ~{if defined(also_report_stats) then ("-n " +  '"' + also_report_stats + '"') else ""}
  >>>
  parameter_meta {
    l: "[OPTIONS] "
    required_list_real: "(required) List of names of files defining real genes (GFF). "
    required_list_predicted: "(required) List of names of files defining predicted genes (GFF).  Must correspond in order to <real_fname_list>."
    list_names_features: "List of names of all features denoting exon regions.  By default, equal to the single name \"CDS\"."
    dump_full_coords: "Dump full coords of correct, partially correct, wrong, missed,  and overlapping exons to a set of files having the specified  file name prefix."
    also_report_stats: "Also report stats on \"nearly correct\" exons, that is, incorrect exons whose boundaries are within <nbases> of being correct. Columns will be labeled \"NCa\" and \"NCp\"."
  }
}