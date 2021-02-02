version 1.0

task SampleStatsExtra {
  input {
    File? arg_name_output
    Boolean? arg_specify_precision
    Boolean? arg_part_margin
    Boolean? arg_restrict_chroms
    Boolean? arg_compute_spectrum
    Boolean? arg_compute_stats
    Boolean? ld_use_cm
    Boolean? ld_use_bp
    String? ld_seps
    Boolean? arg_compute_dind
    Boolean? include_tree_stats
    Boolean? per_pop_stats
    Boolean? print_summary_only
    File? global_afs
    Int? global_ld_r_two
    File? global_ld_d_prime
    String? global_ld_dists_snp_count
    Int? max_sims
    Boolean? _add_quantiles
    Int? region_len_bp
    Int? ld_hist_max_sep_bp
    Int? ld_hist_num_bins
    Int? ld_hist_min_maf
    Boolean? arg_print_progress
  }
  command <<<
    sample_stats_extra \
      ~{if (arg_name_output) then "-o" else ""} \
      ~{if (arg_specify_precision) then "-p" else ""} \
      ~{if (arg_part_margin) then "-m" else ""} \
      ~{if (arg_restrict_chroms) then "-c" else ""} \
      ~{if (arg_compute_spectrum) then "-a" else ""} \
      ~{if (arg_compute_stats) then "-l" else ""} \
      ~{if (ld_use_cm) then "--ld-use-cM" else ""} \
      ~{if (ld_use_bp) then "--ld-use-bp" else ""} \
      ~{if defined(ld_seps) then ("--ld-seps " +  '"' + ld_seps + '"') else ""} \
      ~{if (arg_compute_dind) then "-D" else ""} \
      ~{if (include_tree_stats) then "-t" else ""} \
      ~{if (per_pop_stats) then "--per-pop-stats" else ""} \
      ~{if (print_summary_only) then "-s" else ""} \
      ~{if defined(global_afs) then ("--global-afs " +  '"' + global_afs + '"') else ""} \
      ~{if defined(global_ld_r_two) then ("--global-ld-r2 " +  '"' + global_ld_r_two + '"') else ""} \
      ~{if defined(global_ld_d_prime) then ("--global-ld-Dprime " +  '"' + global_ld_d_prime + '"') else ""} \
      ~{if defined(global_ld_dists_snp_count) then ("--global-ld-dists-snp-count " +  '"' + global_ld_dists_snp_count + '"') else ""} \
      ~{if defined(max_sims) then ("--max-sims " +  '"' + max_sims + '"') else ""} \
      ~{if (_add_quantiles) then "-q" else ""} \
      ~{if defined(region_len_bp) then ("--region-len-bp " +  '"' + region_len_bp + '"') else ""} \
      ~{if defined(ld_hist_max_sep_bp) then ("--ld-hist-max-sep-bp " +  '"' + ld_hist_max_sep_bp + '"') else ""} \
      ~{if defined(ld_hist_num_bins) then ("--ld-hist-num-bins " +  '"' + ld_hist_num_bins + '"') else ""} \
      ~{if defined(ld_hist_min_maf) then ("--ld-hist-min-maf " +  '"' + ld_hist_min_maf + '"') else ""} \
      ~{if (arg_print_progress) then "-g" else ""}
  >>>
  parameter_meta {
    arg_name_output: "[ --outfile ] arg                  name of output file (default is to\\nwrite to stdout)"
    arg_specify_precision: "[ --precision ] arg (=8)           specify precision of output"
    arg_part_margin: "[ --margin ] arg (=0.10000000000000001)\\nignore part of simulated region within\\nthis margin of ends of region"
    arg_restrict_chroms: "[ --chromRange ] arg               restrict chroms to this range"
    arg_compute_spectrum: "[ --afs ] arg                      compute allele frequency spectrum"
    arg_compute_stats: "[ --ld ] arg                       compute LD stats for these definitions"
    ld_use_cm: "use cM for LD snp distances"
    ld_use_bp: "use bp for LD snp distances"
    ld_seps: "snp count separation for LD stats"
    arg_compute_dind: "[ --DIND ] arg                     compute DIND for this loc"
    include_tree_stats: "[ --tree ]                         include tree stats"
    per_pop_stats: "break down stats by pop"
    print_summary_only: "[ --summary-only ]                 print summary only"
    global_afs: "save global AFS to this file"
    global_ld_r_two: "save global LD histogram for r^2 to\\nthis file"
    global_ld_d_prime: "save global LD histogram for Dprime to\\nthis file"
    global_ld_dists_snp_count: "for LD computation, use SNP pairs at\\nthis distance (in # of snps between\\nthem)"
    max_sims: "(=0)                   max sims to consider"
    _add_quantiles: "[ --quantiles ]                    add quantiles"
    region_len_bp: "(=-1)             length of simulated region (bp)"
    ld_hist_max_sep_bp: "(=0)         for LD histogram, max separation (bp)"
    ld_hist_num_bins: "(=0)           for LD histogram, number of bins"
    ld_hist_min_maf: "(=0)            for LD histogram, ignore SNPs with\\nminor allele freq less than this"
    arg_print_progress: "[ --progress-every ] arg           print progress every N sims"
  }
  output {
    File out_stdout = stdout()
    File out_arg_name_output = "${in_arg_name_output}"
  }
}