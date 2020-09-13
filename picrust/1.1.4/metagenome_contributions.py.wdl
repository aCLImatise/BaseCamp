version 1.0

task MetagenomeContributionspy {
  input {
    Boolean? verbose
    String? type_of_prediction
    Int? gg_version
    String? input_count_table
    Boolean? suppress_subset_loading
    Boolean? load_pre_calc_file_in_biom
    String? limit_to_functional_categories
    String? limit_to_function
    String? input_otu_table
    File? output_fp
  }
  command <<<
    metagenome_contributions_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(type_of_prediction) then ("--type_of_prediction " +  '"' + type_of_prediction + '"') else ""} \
      ~{if defined(gg_version) then ("--gg_version " +  '"' + gg_version + '"') else ""} \
      ~{if defined(input_count_table) then ("--input_count_table " +  '"' + input_count_table + '"') else ""} \
      ~{if (suppress_subset_loading) then "--suppress_subset_loading" else ""} \
      ~{if (load_pre_calc_file_in_biom) then "--load_precalc_file_in_biom" else ""} \
      ~{if defined(limit_to_functional_categories) then ("--limit_to_functional_categories " +  '"' + limit_to_functional_categories + '"') else ""} \
      ~{if defined(limit_to_function) then ("--limit_to_function " +  '"' + limit_to_function + '"') else ""} \
      ~{if defined(input_otu_table) then ("--input_otu_table " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    type_of_prediction: "Type of functional predictions. Valid choices are: ko,\\ncog, rfam [default: ko]"
    gg_version: "Version of GreenGenes that was used for OTU picking.\\nValid choices are: 13_5, 18may2012 [default: 13_5]"
    input_count_table: "Precalculated function predictions on per otu basis in\\nbiom format (can be gzipped). Note: using this option\\noverrides --type_of_prediction and --gg_version.\\n[default: none]"
    suppress_subset_loading: "Normally, only counts for OTUs present in the sample\\nare loaded.  If this flag is passed, the full biom\\ntable is loaded.  This makes no difference for the\\nanalysis, but may result in faster load times (at the\\ncost of more memory usage)"
    load_pre_calc_file_in_biom: "Instead of loading the precalculated file in tab-\\ndelimited format (with otu ids as row ids and traits\\nas columns) load the data in biom format (with otu as\\nSampleIds and traits as ObservationIds) [default:\\nFalse]"
    limit_to_functional_categories: "If provided only output prediction for functions that\\nmatch the specified functional category. Multiple\\ncategories can be passed as a list separated by |\\n[default: False]"
    limit_to_function: "If provided, only output predictions for the specified\\nfunction ids.  Multiple function ids can be passed\\nusing comma delimiters."
    input_otu_table: "the input otu table in biom format [REQUIRED]"
    output_fp: "the output file for the metagenome contributions\\n[REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}