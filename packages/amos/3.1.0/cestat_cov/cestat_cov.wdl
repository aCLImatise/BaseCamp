version 1.0

task Cestatcov {
  input {
    Boolean? display_compatible_version
    Boolean? disregard_bank_locks
    Boolean? recompute_mean_stdev
    Boolean? dump_scaffoldcontig_iids
    Float? only_output_ce
    Int? only_output_features
    Boolean? consider_scaffolds_instead
    Boolean? input_bedpe_file
    Int? use_library_mean
    Int? use_library_stdev
    Int? only_use_pairs
    File bank_path
  }
  command <<<
    cestat_cov \
      ~{bank_path} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (recompute_mean_stdev) then "-R" else ""} \
      ~{if (dump_scaffoldcontig_iids) then "-i" else ""} \
      ~{if defined(only_output_ce) then ("-f " +  '"' + only_output_ce + '"') else ""} \
      ~{if defined(only_output_features) then ("-l " +  '"' + only_output_features + '"') else ""} \
      ~{if (consider_scaffolds_instead) then "-S" else ""} \
      ~{if (input_bedpe_file) then "-B" else ""} \
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
    consider_scaffolds_instead: "Consider scaffolds instead of contigs"
    input_bedpe_file: "The input is a BEDPE file, not an AMOS bank"
    use_library_mean: "Use this as the library mean (default: 2244)"
    use_library_stdev: "Use this as the library stdev (default: 250)"
    only_use_pairs: "Only use pairs that are within rng deviations from the mean (default: 8)"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}