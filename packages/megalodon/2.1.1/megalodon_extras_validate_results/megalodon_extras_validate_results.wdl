version 1.0

task MegalodonExtrasValidateResults {
  input {
    Array[String] control_megalodon_results_dirs
    String? ground_truth_data
    File? valid_sites
    Boolean? strand_specific_sites
    Boolean? allow_unbalance_classes
    Array[String] results_labels
    File? out_pdf
    File? out_filename
    Boolean? quiet
  }
  command <<<
    megalodon_extras validate results \
      ~{if defined(control_megalodon_results_dirs) then ("--control-megalodon-results-dirs " +  '"' + control_megalodon_results_dirs + '"') else ""} \
      ~{if defined(ground_truth_data) then ("--ground-truth-data " +  '"' + ground_truth_data + '"') else ""} \
      ~{if defined(valid_sites) then ("--valid-sites " +  '"' + valid_sites + '"') else ""} \
      ~{if (strand_specific_sites) then "--strand-specific-sites" else ""} \
      ~{if (allow_unbalance_classes) then "--allow-unbalance-classes" else ""} \
      ~{if defined(results_labels) then ("--results-labels " +  '"' + results_labels + '"') else ""} \
      ~{if defined(out_pdf) then ("--out-pdf " +  '"' + out_pdf + '"') else ""} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    control_megalodon_results_dirs: "Megalodon output directories for modified base control\\nsample(s). Could be a PCR or IVT sample. Either a\\nsingle control for all modified samples or one control\\nsample for each modified sample should be provided."
    ground_truth_data: "Ground truth csv with (chrm, strand, pos, is_mod)\\nvalues."
    valid_sites: "VALID_SITES\\nName and BED file containing sites over which to\\nrestrict modified base results. Multiple sets of valid\\nsites may be provided. For example E. coli 6mA sites\\ncould be specified as: `--valid-sites \\\"Dam\\nMethylation\\\" Dam_motif_sites.bed --valid-sites \\\"EcoKI\\nMethylation\\\" EcoKI_motif_sites.bed`."
    strand_specific_sites: "Sites in --ground-truth-data and/or --valid-sites are\\nstrand-specific. Default: Sites are not strand\\nspecific."
    allow_unbalance_classes: "Allow unbalanced classes in modified base metric\\ncomputation. Default: Balance size of modified and\\ncanonical classes for each comparison made."
    results_labels: "Name for each Megalodon results directory. Control\\ndirectories will have the suffix \\\" Control\\\" appended\\nto the names. Default: \\\"Sample 1\\\", \\\"Sample 2\\\", ..."
    out_pdf: "Output pdf filename. Default: megalodon_validation.pdf"
    out_filename: "Output filename for text summary. Default: stdout"
    quiet: "Suppress progress information."
  }
  output {
    File out_stdout = stdout()
    File out_out_pdf = "${in_out_pdf}"
    File out_out_filename = "${in_out_filename}"
  }
}