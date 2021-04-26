version 1.0

task MegalodonExtrasModifiedBasesPerSiteThresholds {
  input {
    Int? ground_truth_cov_min
    Int? nano_pore_cov_min
    String? mod_bases
    String? strand_offset
    Array[String] valid_sites
    File? out_low_coverage_sites
    File? out_per_site_mod_thresholds
    File? log_filename
    Int? batch_size
    Int? processes
    String output_dot
  }
  command <<<
    megalodon_extras modified_bases per_site_thresholds \
      ~{output_dot} \
      ~{if defined(ground_truth_cov_min) then ("--ground-truth-cov-min " +  '"' + ground_truth_cov_min + '"') else ""} \
      ~{if defined(nano_pore_cov_min) then ("--nanopore-cov-min " +  '"' + nano_pore_cov_min + '"') else ""} \
      ~{if defined(mod_bases) then ("--mod-bases " +  '"' + mod_bases + '"') else ""} \
      ~{if defined(strand_offset) then ("--strand-offset " +  '"' + strand_offset + '"') else ""} \
      ~{if defined(valid_sites) then ("--valid-sites " +  '"' + valid_sites + '"') else ""} \
      ~{if defined(out_low_coverage_sites) then ("--out-low-coverage-sites " +  '"' + out_low_coverage_sites + '"') else ""} \
      ~{if defined(out_per_site_mod_thresholds) then ("--out-per-site-mod-thresholds " +  '"' + out_per_site_mod_thresholds + '"') else ""} \
      ~{if defined(log_filename) then ("--log-filename " +  '"' + log_filename + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    ground_truth_cov_min: "Minimum coverage (both strands) to include a site from\\nground truth data. Default: 15"
    nano_pore_cov_min: "Minimum coverage (single strand) to include a site\\nfrom nanopore data. Default: 30"
    mod_bases: "Single letter codes for the modified base. For\\nmulitple alternative bases supply all single letter\\ncodes with no spaces. Default: m"
    strand_offset: "Offset to combine stranded results. Positive value\\nindicates reverse strand sites have higher position\\nvalues. Default treat strands independently."
    valid_sites: "BED files containing sites over which to restrict\\nmodified base results. Useful when processing full\\nresults using a subset of the ground truth (e.g. CG\\nand CH processing). Must be sorted in same order as\\n[ground_truth_bed] (`sort -k1V -k2n`)"
    out_low_coverage_sites: "Output filename for sites with low ground truth or\\nnanopore coverage. Default: low_coverage_sites.bed"
    out_per_site_mod_thresholds: "Output filename for per-site megalodon mod scoring\\nthresholds. Default: site_mod_thresholds.bed"
    log_filename: "Output filename for logging. Default:\\nper_site_thresholds.log"
    batch_size: "Number of sites to include in each batch for\\nprocessing. Default: 100000"
    processes: "Number of processes. Default: 1\\n"
    output_dot: "ground_truth_bed      BEDmethyl file containing ground truth fraction"
  }
  output {
    File out_stdout = stdout()
    File out_out_low_coverage_sites = "${in_out_low_coverage_sites}"
    File out_out_per_site_mod_thresholds = "${in_out_per_site_mod_thresholds}"
    File out_log_filename = "${in_log_filename}"
  }
}