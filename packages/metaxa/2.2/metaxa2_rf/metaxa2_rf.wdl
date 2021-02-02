version 1.0

task Metaxa2Rf {
  input {
    File? metaxa_taxonomy_output
    File? base_name_output
    String? include_only_classifications
    String? reliability_cutoff_entries
    String? length_cutoff_bp
    String? identity_cutoff_best
    String? maximum_resolution_level
    String? minimum_resolution_level
    String? investigate_only_level
    String? treat_unclassified_entries
    String? remove_na
    String? model
    String? re_samples
    String? write
    String? size
    String? scale
    String? exclude_rows
    String? ace_rare
    String? summary
    String? lists
    String? separate
    String? unknown
    String? sampled
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_rf \
      ~{if defined(metaxa_taxonomy_output) then ("-i " +  '"' + metaxa_taxonomy_output + '"') else ""} \
      ~{if defined(base_name_output) then ("-o " +  '"' + base_name_output + '"') else ""} \
      ~{if defined(include_only_classifications) then ("-t " +  '"' + include_only_classifications + '"') else ""} \
      ~{if defined(reliability_cutoff_entries) then ("-r " +  '"' + reliability_cutoff_entries + '"') else ""} \
      ~{if defined(length_cutoff_bp) then ("-l " +  '"' + length_cutoff_bp + '"') else ""} \
      ~{if defined(identity_cutoff_best) then ("-d " +  '"' + identity_cutoff_best + '"') else ""} \
      ~{if defined(maximum_resolution_level) then ("-m " +  '"' + maximum_resolution_level + '"') else ""} \
      ~{if defined(minimum_resolution_level) then ("-n " +  '"' + minimum_resolution_level + '"') else ""} \
      ~{if defined(investigate_only_level) then ("-s " +  '"' + investigate_only_level + '"') else ""} \
      ~{if defined(treat_unclassified_entries) then ("-u " +  '"' + treat_unclassified_entries + '"') else ""} \
      ~{if defined(remove_na) then ("--remove_na " +  '"' + remove_na + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(re_samples) then ("--resamples " +  '"' + re_samples + '"') else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(exclude_rows) then ("--exclude_rows " +  '"' + exclude_rows + '"') else ""} \
      ~{if defined(ace_rare) then ("--ace_rare " +  '"' + ace_rare + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(lists) then ("--lists " +  '"' + lists + '"') else ""} \
      ~{if defined(separate) then ("--separate " +  '"' + separate + '"') else ""} \
      ~{if defined(unknown) then ("--unknown " +  '"' + unknown + '"') else ""} \
      ~{if defined(sampled) then ("--sampled " +  '"' + sampled + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  parameter_meta {
    metaxa_taxonomy_output: ": Metaxa taxonomy output file to process (*.taxonomy.txt)"
    base_name_output: ": Base for the name of output file(s)"
    include_only_classifications: ": Include only classifications of this type(s)\\n(several can be comma-separated), default is all"
    reliability_cutoff_entries: ": Reliability cutoff, entries below cutoff will be classified as 'unknown', default = 0"
    length_cutoff_bp: ": Length cutoff (in bp) of best hit, entries below cutoff will be classified as 'unknown', default = 50"
    identity_cutoff_best: ": Identity cutoff of best hit (in percent), entries below cutoff will be classified as 'unknown', default = 0"
    maximum_resolution_level: ": Maximum resolution level for taxonomic traversal, zero is unlimited, default = 0"
    minimum_resolution_level: ": Minimum resolution level for taxonomic traversal, starting at level 1, default = 1"
    investigate_only_level: ": Investigate only the last taxonomic level (in good cases species resolution), default is off (F)"
    treat_unclassified_entries: ": Treat unclassified entries as unknowns, default is off (F), which will use as much taxonomic information as possible"
    remove_na: ": Set sequence entries with no blast hits to 'Unknown', default is on (T)"
    model: ": the model used for estimating species richness, 'all' will output data for all three models, default = bengtsson-palme (b-p)"
    re_samples: ": number of resamplings, default = 1000"
    write: ": write interval in the output, default = 1"
    size: ": total number of sequences, by default this is set to the sum of all counts"
    scale: ": scales all the samples to have this number of sequences"
    exclude_rows: ": a comma-separated list of rows to NOT include in the analysis"
    ace_rare: ": the rare taxa cutoff used for the ACE estimator, default = 10"
    summary: ": Summary of results output, on (T) by default"
    lists: ": Output lists of counts for different taxa, one for each traversal level, on (T) by default"
    separate: ": Outputs rarefaction analysis results separately for the different origins, on (T) by default"
    unknown: ": Outputs a list of entries designated as unknowns, with their statistics, off (F) by default"
    sampled: ": Output lists of the number of individuals sampled for different taxa, one for each traversal level, off (F) by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_metaxa_taxonomy_output = "${in_metaxa_taxonomy_output}"
    File out_base_name_output = "${in_base_name_output}"
  }
}