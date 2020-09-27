version 1.0

task PredictMetagenomespy {
  input {
    Boolean? verbose
    String? type_of_prediction
    Int? gg_version
    String? input_count_table
    File? accuracy_metrics
    Boolean? no_round
    Boolean? normalize_by_function
    Boolean? normalize_by_otu
    Boolean? suppress_subset_loading
    Boolean? load_pre_calc_file_in_biom
    String? input_variance_table
    Boolean? with_confidence
    Boolean? format_tab_delimited
    String? input_otu_table
    File? output_meta_genome_table
    String predictions_dot
  }
  command <<<
    predict_metagenomes_py \
      ~{predictions_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(type_of_prediction) then ("--type_of_prediction " +  '"' + type_of_prediction + '"') else ""} \
      ~{if defined(gg_version) then ("--gg_version " +  '"' + gg_version + '"') else ""} \
      ~{if defined(input_count_table) then ("--input_count_table " +  '"' + input_count_table + '"') else ""} \
      ~{if defined(accuracy_metrics) then ("--accuracy_metrics " +  '"' + accuracy_metrics + '"') else ""} \
      ~{if (no_round) then "--no_round" else ""} \
      ~{if (normalize_by_function) then "--normalize_by_function" else ""} \
      ~{if (normalize_by_otu) then "--normalize_by_otu" else ""} \
      ~{if (suppress_subset_loading) then "--suppress_subset_loading" else ""} \
      ~{if (load_pre_calc_file_in_biom) then "--load_precalc_file_in_biom" else ""} \
      ~{if defined(input_variance_table) then ("--input_variance_table " +  '"' + input_variance_table + '"') else ""} \
      ~{if (with_confidence) then "--with_confidence" else ""} \
      ~{if (format_tab_delimited) then "--format_tab_delimited" else ""} \
      ~{if defined(input_otu_table) then ("--input_otu_table " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_meta_genome_table) then ("--output_metagenome_table " +  '"' + output_meta_genome_table + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    type_of_prediction: "Type of functional predictions. Valid choices are: ko,\\ncog, rfam [default: ko]"
    gg_version: "Version of GreenGenes that was used for OTU picking.\\nValid choices are: 13_5, 18may2012 [default: 13_5]"
    input_count_table: "Precalculated function predictions on per otu basis in\\nbiom format (can be gzipped). Note: using this option\\noverrides --type_of_prediction and --gg_version.\\n[default: none]"
    accuracy_metrics: "If provided, calculate accuracy metrics for the\\npredicted metagenome.  NOTE: requires that per-genome\\naccuracy metrics were calculated using\\npredict_traits.py during genome prediction (e.g. there\\nare \\\"NSTI\\\" values in the genome .biom file metadata)"
    no_round: "Disable rounding number of predicted functions to the\\nthe nearest whole number. This option is important if\\nyou are inputting abundances as proportions [default:\\nFalse]"
    normalize_by_function: "Normalizes the predicted functional abundances by\\ndividing each abundance by the sum of functional\\nabundances in the sample. Total sum of abundances for\\neach sample will equal 1."
    normalize_by_otu: "Normalizes the predicted functional abundances by\\ndividing each abundance by the sum of OTUs in the\\nsample. Note: total sum of abundances for each sample\\nwill NOT equal 1."
    suppress_subset_loading: "Normally, only counts for OTUs present in the sample\\nare loaded.  If this flag is passed, the full biom\\ntable is loaded.  This makes no difference for the\\nanalysis, but may result in faster load times (at the\\ncost of more memory usage)"
    load_pre_calc_file_in_biom: "Instead of loading the precalculated file in tab-\\ndelimited format (with otu ids as row ids and traits\\nas columns) load the data in biom format (with otu as\\nSampleIds and traits as ObservationIds) [default:\\nFalse]"
    input_variance_table: "Precalculated table of variances corresponding to the\\nprecalculated table of function predictions.  As with\\nthe count table, these are on a per otu basis and in\\nBIOM format (can be gzipped). Note: using this option\\noverrides --type_of_prediction and --gg_version.\\n[default: none]"
    with_confidence: "Calculate 95% confidence intervals for metagenome"
    format_tab_delimited: "output the predicted metagenome table in tab-delimited\\nformat [default: False]"
    input_otu_table: "the input otu table in biom format [REQUIRED]"
    output_meta_genome_table: "the output file for the predicted metagenome\\n[REQUIRED]\\n"
    predictions_dot: "By default, this uses the confidence"
  }
  output {
    File out_stdout = stdout()
    File out_output_meta_genome_table = "${in_output_meta_genome_table}"
  }
}