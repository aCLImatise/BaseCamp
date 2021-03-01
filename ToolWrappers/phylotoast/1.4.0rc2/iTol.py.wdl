version 1.0

task ITolpy {
  input {
    File? otu_table
    File? mapping
    String? input_tree
    File? output_tre
    File? output_it_ol_table
    String? map_categories
    String? analysis_metric
    Boolean? stabilize_variance
    Boolean? keep_ot_uids
  }
  command <<<
    iTol_py \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(input_tree) then ("--input_tree " +  '"' + input_tree + '"') else ""} \
      ~{if defined(output_tre) then ("--output_tre " +  '"' + output_tre + '"') else ""} \
      ~{if defined(output_it_ol_table) then ("--output_itol_table " +  '"' + output_it_ol_table + '"') else ""} \
      ~{if defined(map_categories) then ("--map_categories " +  '"' + map_categories + '"') else ""} \
      ~{if defined(analysis_metric) then ("--analysis_metric " +  '"' + analysis_metric + '"') else ""} \
      ~{if (stabilize_variance) then "--stabilize_variance" else ""} \
      ~{if (keep_ot_uids) then "--keep_otuids" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    otu_table: "The biom-format file with OTU-Sample abundance data."
    mapping: "The mapping file specifying group information for each\\nsample."
    input_tree: "A phylogenetic tree in Newick format to be modified by\\nexchanging the OTU ID node names for taxonomic names."
    output_tre: "The output .tre file"
    output_it_ol_table: "Other than a phylogenetic tree, the main input to iTol\\nis a dataset file containing some representation of\\nthe abundance of every OTU across the specified data\\ngroups. This program provides multiple calculation\\nmethods. See the --analysis_metric option for details."
    map_categories: "Any mapping categories, such as treatment type, that\\nwill be used to group the data in the output iTol\\ntable. For example, one category with three types will\\nresult in three data columns in the final output. Two\\ncategories with three types each will result in six\\ndata columns. Default is no categories and all the\\ndata will be treated as a single group."
    analysis_metric: "Specifies which metric is calculated on the abundance\\ndata in the OTU table. Available options: MRE - mean\\nrelative abundance (Abundance data is normalized by\\ntotal sample abundance, then averaged across OTU),\\nNMRE - normalized mean relative abundance (MRE\\nnormalized by the total MRE across the groups as\\nspecified in --map_categories), raw (outputs the\\nactual sequence abundance data for each OTU)."
    stabilize_variance: "Apply the variance-stabilizing arcsine square root\\ntransformation to the OTU proportion data."
    keep_ot_uids: "Keep OTU IDs in the output files instead of.replacing\\nthem with shortened taxonomic names.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_tre = "${in_output_tre}"
  }
}