version 1.0

task SampleStatsExtra {
  input {
    Boolean? arg_name_output
    Boolean? arg_specify_precision
    Boolean? arg_ignore_part
    Boolean? arg_restrict_chroms
    Boolean? arg_compute_spectrum
    Boolean? arg_compute_ld
    Boolean? ld_use_cm
    Boolean? ld_use_bp
    String? ld_seps
    Boolean? arg_compute_dind
    Boolean? include_tree_stats
    Boolean? per_pop_stats
    Boolean? print_summary_only
    String? global_afs
    String? global_ld_r_two
    String? global_ld_d_prime
    String? global_ld_dists_snp_count
    String? max_sims
    Boolean? _add_quantiles
    String? region_len_bp
    String? ld_hist_max_sep_bp
    String? ld_hist_num_bins
    String? ld_hist_min_maf
    Boolean? arg_print_progress
  }
  command <<<
    sample_stats_extra \
      ~{true="-o" false="" arg_name_output} \
      ~{true="-p" false="" arg_specify_precision} \
      ~{true="-m" false="" arg_ignore_part} \
      ~{true="-c" false="" arg_restrict_chroms} \
      ~{true="-a" false="" arg_compute_spectrum} \
      ~{true="-l" false="" arg_compute_ld} \
      ~{true="--ld-use-cM" false="" ld_use_cm} \
      ~{true="--ld-use-bp" false="" ld_use_bp} \
      ~{if defined(ld_seps) then ("--ld-seps " +  '"' + ld_seps + '"') else ""} \
      ~{true="-D" false="" arg_compute_dind} \
      ~{true="-t" false="" include_tree_stats} \
      ~{true="--per-pop-stats" false="" per_pop_stats} \
      ~{true="-s" false="" print_summary_only} \
      ~{if defined(global_afs) then ("--global-afs " +  '"' + global_afs + '"') else ""} \
      ~{if defined(global_ld_r_two) then ("--global-ld-r2 " +  '"' + global_ld_r_two + '"') else ""} \
      ~{if defined(global_ld_d_prime) then ("--global-ld-Dprime " +  '"' + global_ld_d_prime + '"') else ""} \
      ~{if defined(global_ld_dists_snp_count) then ("--global-ld-dists-snp-count " +  '"' + global_ld_dists_snp_count + '"') else ""} \
      ~{if defined(max_sims) then ("--max-sims " +  '"' + max_sims + '"') else ""} \
      ~{true="-q" false="" _add_quantiles} \
      ~{if defined(region_len_bp) then ("--region-len-bp " +  '"' + region_len_bp + '"') else ""} \
      ~{if defined(ld_hist_max_sep_bp) then ("--ld-hist-max-sep-bp " +  '"' + ld_hist_max_sep_bp + '"') else ""} \
      ~{if defined(ld_hist_num_bins) then ("--ld-hist-num-bins " +  '"' + ld_hist_num_bins + '"') else ""} \
      ~{if defined(ld_hist_min_maf) then ("--ld-hist-min-maf " +  '"' + ld_hist_min_maf + '"') else ""} \
      ~{true="-g" false="" arg_print_progress}
  >>>
  parameter_meta {
    arg_name_output: "[ --outfile ] arg                  name of output file (default is to  write to stdout)"
    arg_specify_precision: "[ --precision ] arg (=8)           specify precision of output"
    arg_ignore_part: "[ --margin ] arg (=0.10000000000000001) ignore part of simulated region within  this margin of ends of region"
    arg_restrict_chroms: "[ --chromRange ] arg               restrict chroms to this range"
    arg_compute_spectrum: "[ --afs ] arg                      compute allele frequency spectrum"
    arg_compute_ld: "[ --ld ] arg                       compute LD stats for these definitions"
    ld_use_cm: "use cM for LD snp distances"
    ld_use_bp: "use bp for LD snp distances"
    ld_seps: "snp count separation for LD stats"
    arg_compute_dind: "[ --DIND ] arg                     compute DIND for this loc"
    include_tree_stats: "[ --tree ]                         include tree stats"
    per_pop_stats: "break down stats by pop"
    print_summary_only: "[ --summary-only ]                 print summary only"
    global_afs: "save global AFS to this file"
    global_ld_r_two: "save global LD histogram for r^2 to  this file"
    global_ld_d_prime: "save global LD histogram for Dprime to  this file"
    global_ld_dists_snp_count: "for LD computation, use SNP pairs at  this distance (in # of snps between  them)"
    max_sims: "(=0)                   max sims to consider"
    _add_quantiles: "[ --quantiles ]                    add quantiles"
    region_len_bp: "(=-1)             length of simulated region (bp)"
    ld_hist_max_sep_bp: "(=0)         for LD histogram, max separation (bp)"
    ld_hist_num_bins: "(=0)           for LD histogram, number of bins"
    ld_hist_min_maf: "(=0)            for LD histogram, ignore SNPs with  minor allele freq less than this"
    arg_print_progress: "[ --progress-every ] arg           print progress every N sims"
  }
}