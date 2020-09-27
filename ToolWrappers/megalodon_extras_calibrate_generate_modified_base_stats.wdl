version 1.0

task MegalodonExtrasCalibrateGenerateModifiedBaseStats {
  input {
    Directory? control_megalodon_results_dir
    Array[String] exclude_modified_bases
    Array[String] modified_bases_set
    String? ground_truth_data
    Boolean? strand_specific_sites
    File? out_filename
    Boolean? quiet
  }
  command <<<
    megalodon_extras calibrate generate_modified_base_stats \
      ~{if defined(control_megalodon_results_dir) then ("--control-megalodon-results-dir " +  '"' + control_megalodon_results_dir + '"') else ""} \
      ~{if defined(exclude_modified_bases) then ("--exclude-modified-bases " +  '"' + exclude_modified_bases + '"') else ""} \
      ~{if defined(modified_bases_set) then ("--modified-bases-set " +  '"' + modified_bases_set + '"') else ""} \
      ~{if defined(ground_truth_data) then ("--ground-truth-data " +  '"' + ground_truth_data + '"') else ""} \
      ~{if (strand_specific_sites) then "--strand-specific-sites" else ""} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    control_megalodon_results_dir: "Megalodon output directory with modified base control\\nsample."
    exclude_modified_bases: "Set of modified bases (single letter codes) to\\nexclude."
    modified_bases_set: "Only process these modified bases (single letter\\ncodes)."
    ground_truth_data: "Ground truth csv with (chrm, strand, pos, is_mod)\\nvalues."
    strand_specific_sites: "Sites in --ground-truth-data are strand-specific. If\\nnot set, strand is ignored."
    out_filename: "Output filename for text summary. Default:\\nmod_calibration_statistics.npz"
    quiet: "Suppress progress information."
  }
  output {
    File out_stdout = stdout()
    Directory out_control_megalodon_results_dir = "${in_control_megalodon_results_dir}"
    File out_out_filename = "${in_out_filename}"
  }
}