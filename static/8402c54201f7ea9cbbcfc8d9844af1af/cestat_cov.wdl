version 1.0

task CestatCov {
  input {
    Boolean? display_compatible_version
    Boolean? disregard_bank_locks
    Boolean? recompute_mean_stdev
    Boolean? dump_scaffoldcontig_iids
    Float? only_output_ce
    String? only_output_features
    Boolean? consider_scaffolds_contigs
    Boolean? input_bedpe_file
    String? use_library_mean
    String? use_library_stdev
    String? only_use_pairs
    String bank_path
  }
  command <<<
    cestat-cov \
      ~{bank_path} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-R" false="" recompute_mean_stdev} \
      ~{true="-i" false="" dump_scaffoldcontig_iids} \
      ~{if defined(only_output_ce) then ("-f " +  '"' + only_output_ce + '"') else ""} \
      ~{if defined(only_output_features) then ("-l " +  '"' + only_output_features + '"') else ""} \
      ~{true="-S" false="" consider_scaffolds_contigs} \
      ~{true="-B" false="" input_bedpe_file} \
      ~{if defined(use_library_mean) then ("-m " +  '"' + use_library_mean + '"') else ""} \
      ~{if defined(use_library_stdev) then ("-d " +  '"' + use_library_stdev + '"') else ""} \
      ~{if defined(only_use_pairs) then ("-r " +  '"' + only_use_pairs + '"') else ""}
  >>>
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    recompute_mean_stdev: "Recompute mean and stdev from data"
    dump_scaffoldcontig_iids: "Dump scaffold/contig IIDs instead of EIDs"
    only_output_ce: "Only output CE features outside float deviations"
    only_output_features: "Only output features at least this length (default: 100)"
    consider_scaffolds_contigs: "Consider scaffolds instead of contigs"
    input_bedpe_file: "The input is a BEDPE file, not an AMOS bank"
    use_library_mean: "Use this as the library mean (default: 2244)"
    use_library_stdev: "Use this as the library stdev (default: 250)"
    only_use_pairs: "Only use pairs that are within rng deviations from the mean (default: 8)"
    bank_path: ""
  }
}