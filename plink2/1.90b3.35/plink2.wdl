version 1.0

task Plink2 {
  input {
    Boolean? out
    String? real_ref_alleles
    Boolean? check_sex
    String? regress_rel
    File? extract
    Boolean? write_var_ranges
    String? snps
    Boolean? missing_code
    Boolean? simulate_n_cases
    Boolean? simulate_n_controls
    Boolean? simulate_prevalence
    Boolean? simulate_n
    Boolean? simulate_label
    Boolean? simulate_missing
    String? allow_extra_chr
    Boolean? r_port
    Boolean? parallel
    Boolean? memory
    Boolean? threads
    Boolean? change_variantcovariate_range
    Boolean? seed
    Boolean? perm_batch_size
    Boolean? output_min_p
    Boolean? debug
    Boolean? cnv_del
    Boolean? cnv_dup
    Boolean? cnv_kb
    Boolean? cnv_max_kb
    Boolean? cnv_score
    Boolean? cnv_max_score
    Boolean? cnv_sites
    Boolean? cnv_max_sites
    Boolean? cnv_intersect
    Boolean? cnv_exclude
    Boolean? cnv_subset
    Boolean? cnv_overlap
    Boolean? cnv_region_overlap
    Boolean? cnv_union_overlap
    Boolean? cnv_disrupt
    Boolean? cnv_freq_exclude_above
    Boolean? cnv_freq_exclude_below
    Boolean? cnv_freq_exclude_exact
    Boolean? cnv_freq_include_exact
    String? cnv_freq_overlap
    String? cnv_freq_method_two
    Boolean? cnv_exclude_off_by_one
    Boolean? cnv_test_window
    Boolean? cnv_count
    String reports_dot
    String down_dot
    String homozygosity_dot
    String p_values_dot
    String test_dot
    String loaded_dot
  }
  command <<<
    plink2 \
      ~{reports_dot} \
      ~{down_dot} \
      ~{homozygosity_dot} \
      ~{p_values_dot} \
      ~{test_dot} \
      ~{loaded_dot} \
      ~{true="--out" false="" out} \
      ~{if defined(real_ref_alleles) then ("--real-ref-alleles " +  '"' + real_ref_alleles + '"') else ""} \
      ~{true="--check-sex" false="" check_sex} \
      ~{if defined(regress_rel) then ("--regress-rel " +  '"' + regress_rel + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{true="--write-var-ranges" false="" write_var_ranges} \
      ~{if defined(snps) then ("--snps " +  '"' + snps + '"') else ""} \
      ~{true="--missing_code" false="" missing_code} \
      ~{true="--simulate-ncases" false="" simulate_n_cases} \
      ~{true="--simulate-ncontrols" false="" simulate_n_controls} \
      ~{true="--simulate-prevalence" false="" simulate_prevalence} \
      ~{true="--simulate-n" false="" simulate_n} \
      ~{true="--simulate-label" false="" simulate_label} \
      ~{true="--simulate-missing" false="" simulate_missing} \
      ~{if defined(allow_extra_chr) then ("--allow-extra-chr " +  '"' + allow_extra_chr + '"') else ""} \
      ~{true="--R-port" false="" r_port} \
      ~{true="--parallel" false="" parallel} \
      ~{true="--memory" false="" memory} \
      ~{true="--threads" false="" threads} \
      ~{true="--d" false="" change_variantcovariate_range} \
      ~{true="--seed" false="" seed} \
      ~{true="--perm-batch-size" false="" perm_batch_size} \
      ~{true="--output-min-p" false="" output_min_p} \
      ~{true="--debug" false="" debug} \
      ~{true="--cnv-del" false="" cnv_del} \
      ~{true="--cnv-dup" false="" cnv_dup} \
      ~{true="--cnv-kb" false="" cnv_kb} \
      ~{true="--cnv-max-kb" false="" cnv_max_kb} \
      ~{true="--cnv-score" false="" cnv_score} \
      ~{true="--cnv-max-score" false="" cnv_max_score} \
      ~{true="--cnv-sites" false="" cnv_sites} \
      ~{true="--cnv-max-sites" false="" cnv_max_sites} \
      ~{true="--cnv-intersect" false="" cnv_intersect} \
      ~{true="--cnv-exclude" false="" cnv_exclude} \
      ~{true="--cnv-subset" false="" cnv_subset} \
      ~{true="--cnv-overlap" false="" cnv_overlap} \
      ~{true="--cnv-region-overlap" false="" cnv_region_overlap} \
      ~{true="--cnv-union-overlap" false="" cnv_union_overlap} \
      ~{true="--cnv-disrupt" false="" cnv_disrupt} \
      ~{true="--cnv-freq-exclude-above" false="" cnv_freq_exclude_above} \
      ~{true="--cnv-freq-exclude-below" false="" cnv_freq_exclude_below} \
      ~{true="--cnv-freq-exclude-exact" false="" cnv_freq_exclude_exact} \
      ~{true="--cnv-freq-include-exact" false="" cnv_freq_include_exact} \
      ~{if defined(cnv_freq_overlap) then ("--cnv-freq-overlap " +  '"' + cnv_freq_overlap + '"') else ""} \
      ~{if defined(cnv_freq_method_two) then ("--cnv-freq-method2 " +  '"' + cnv_freq_method_two + '"') else ""} \
      ~{true="--cnv-exclude-off-by-1" false="" cnv_exclude_off_by_one} \
      ~{true="--cnv-test-window" false="" cnv_test_window} \
      ~{true="--cnv-count" false="" cnv_count}
  >>>
  parameter_meta {
    out: "[prefix]   : Specify prefix for output files."
    real_ref_alleles: "your command."
    check_sex: ", the first two control these thresholds."
    regress_rel: "{d}"
    extract: "are considered."
    write_var_ranges: "[block ct]"
    snps: "split a job across multiple machines.)"
    missing_code: ")      values for Oxford-format filesets (def. 'NA')."
    simulate_n_cases: "[num]   : Set --simulate case count (default 1000)."
    simulate_n_controls: "[n]  : Set --simulate control count (default 1000)."
    simulate_prevalence: "[p] : Set --simulate disease prevalence (default 0.01)."
    simulate_n: "[num]        : Set --simulate-qt sample count (default 1000)."
    simulate_label: "[prefix] : Set --simulate{-qt} FID/IID name prefix."
    simulate_missing: "[freq] : Set --simulate{-qt} missing genotype frequency."
    allow_extra_chr: ": Permit unrecognized chromosome codes.  The '0'"
    r_port: "[port #]  : Connect to Rserve on a port other than 6311."
    parallel: "[k] [n] : Divide the output matrix into n pieces, and only compute the kth piece.  The primary output file will have the piece number included in its name, e.g. plink.rel.13 or plink.rel.13.gz if k is 13.  Concatenating these files in order will yield the full matrix of interest.  (Yes, this can be done before unzipping.) N.B. This generally cannot be used to directly write a symmetric square matrix.  Choose square0 or triangle shape instead, and postprocess as necessary."
    memory: "[val]     : Set size, in MB, of initial workspace malloc attempt. (Practically mandatory when using GNU parallel.)"
    threads: "[val]    : Set maximum number of concurrent threads. This has one known limitation: some BLAS/LAPACK linear algebra operations are multithreaded in a way that PLINK cannot control.  If this is problematic, you should recompile against single-threaded BLAS/LAPACK."
    change_variantcovariate_range: "[char]         : Change variant/covariate range delimiter (normally '-')."
    seed: "[val...]    : Set random number seed(s).  Each value must be an integer between 0 and 4294967295 inclusive."
    perm_batch_size: "[val] : Set number of permutations per batch for some permutation tests."
    output_min_p: "[p] : Specify minimum p-value to write to reports."
    debug: ": Use slower, more crash-resistant logging method."
    cnv_del: ": Exclude all variants with more than one copy."
    cnv_dup: ": Exclude all variants with fewer than three copies."
    cnv_kb: "[kb len]        : Exclude segments shorter than the given length."
    cnv_max_kb: "[kb len]    : Exclude segments longer than the given length."
    cnv_score: "[val]        : Exclude all variants with confidence score < val."
    cnv_max_score: "[val]    : Exclude all variants with confidence score > val."
    cnv_sites: "[ct]         : Exclude all segments with fewer than ct probes."
    cnv_max_sites: "[ct]     : Exclude all segments with more than ct probes."
    cnv_intersect: "[fname]  : Only include segments which intersect a region in the given region list."
    cnv_exclude: "[fname]    : Exclude all segments which intersect a region in the given region list."
    cnv_subset: "[fname]     : Ignore all regions in the --cnv-intersect/-exclude /-count list that aren't named in the given file."
    cnv_overlap: "[x]        : Only count intersections of length at least xn, where n is the segment size."
    cnv_region_overlap: "[x] : x >= [overlap] / [region size]."
    cnv_union_overlap: "[x]  : x >= [overlap] / [union size]."
    cnv_disrupt: ": Only include/exclude segments with an endpoint in a region."
    cnv_freq_exclude_above: "[k] : Exclude all segments where any portion is included by more than k total segments."
    cnv_freq_exclude_below: "[k] : Exclude all segments where no portion is included by k or more total segments."
    cnv_freq_exclude_exact: "[k] : Exclude all segments which have a portion included by at least k total segments, but no portion included by more."
    cnv_freq_include_exact: "[k] : Reverse of --cnv-freq-exclude-exact."
    cnv_freq_overlap: ": Only count portions of length at least xn, where n is the segment size."
    cnv_freq_method_two: ": Causes k to instead be compared against the number of segments for which x >= [overlap] / [union]."
    cnv_exclude_off_by_one: ": Exclude .cnv segments where the terminal .cnv.map entry is off by 1."
    cnv_test_window: "[size] : Specify window size (in kb) for CNV assoc. test."
    cnv_count: "[fname]      : Specify region list for --cnv-indiv-perm (optional) or --cnv-enrichment-test (required)."
    reports_dot: "(This cannot be used with very long allele codes.)"
    down_dot: "With no parameters, 100k iterations are run."
    homozygosity_dot: "(Automatically set when --homozyg-match is present.)"
    p_values_dot: "'fisher-midp' also applies Lancaster's mid-p adjustment."
    test_dot: "Gene locations must be loaded with --cnv-count."
    loaded_dot: "Default for non-merge operations."
  }
}