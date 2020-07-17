version 1.0

task Plink {
  input {
    Boolean? out
    String? real_ref_alleles
    Boolean? check_sex
    String? regress_rel
    File? extract
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
    Boolean? r_host
    Boolean? r_socket
    Boolean? parallel
    Boolean? memory
    Boolean? threads
    Boolean? change_variantcovariate_range
    Boolean? seed
    Boolean? perm_batch_size
    Boolean? output_min_p
    Boolean? debug
    String variant_dot
    String reports_dot
    String down_dot
    String homozygosity_dot
    String p_values_dot
    String loaded_dot
  }
  command <<<
    plink \
      ~{variant_dot} \
      ~{reports_dot} \
      ~{down_dot} \
      ~{homozygosity_dot} \
      ~{p_values_dot} \
      ~{loaded_dot} \
      ~{true="--out" false="" out} \
      ~{if defined(real_ref_alleles) then ("--real-ref-alleles " +  '"' + real_ref_alleles + '"') else ""} \
      ~{true="--check-sex" false="" check_sex} \
      ~{if defined(regress_rel) then ("--regress-rel " +  '"' + regress_rel + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
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
      ~{true="--R-host" false="" r_host} \
      ~{true="--R-socket" false="" r_socket} \
      ~{true="--parallel" false="" parallel} \
      ~{true="--memory" false="" memory} \
      ~{true="--threads" false="" threads} \
      ~{true="--d" false="" change_variantcovariate_range} \
      ~{true="--seed" false="" seed} \
      ~{true="--perm-batch-size" false="" perm_batch_size} \
      ~{true="--output-min-p" false="" output_min_p} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    out: "[prefix]   : Specify prefix for output files."
    real_ref_alleles: "your command."
    check_sex: ", the first two control these thresholds."
    regress_rel: "{d}"
    extract: "are considered."
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
    r_host: "[host]    : Connect to Rserve host."
    r_socket: "[sock]  : Connect to Rserve socket."
    parallel: "[k] [n] : Divide the output matrix into n pieces, and only compute the kth piece.  The primary output file will have the piece number included in its name, e.g. plink.rel.13 or plink.rel.13.gz if k is 13.  Concatenating these files in order will yield the full matrix of interest.  (Yes, this can be done before unzipping.) N.B. This generally cannot be used to directly write a symmetric square matrix.  Choose square0 or triangle shape instead, and postprocess as necessary."
    memory: "[val]     : Set size, in MB, of initial workspace malloc attempt. (Practically mandatory when using GNU parallel.)"
    threads: "[val]    : Set maximum number of concurrent threads. This has one known limitation: some BLAS/LAPACK linear algebra operations are multithreaded in a way that PLINK cannot control.  If this is problematic, you should recompile against single-threaded BLAS/LAPACK."
    change_variantcovariate_range: "[char]         : Change variant/covariate range delimiter (normally '-')."
    seed: "[val...]    : Set random number seed(s).  Each value must be an integer between 0 and 4294967295 inclusive."
    perm_batch_size: "[val] : Set number of permutations per batch for some permutation tests."
    output_min_p: "[p] : Specify minimum p-value to write to reports."
    debug: ": Use slower, more crash-resistant logging method."
    variant_dot: "Also supports 'omit-nonmale-y'."
    reports_dot: "(This cannot be used with very long allele codes.)"
    down_dot: "With no parameters, 100k iterations are run."
    homozygosity_dot: "(Automatically set when --homozyg-match is present.)"
    p_values_dot: "'fisher-midp' also applies Lancaster's mid-p adjustment."
    loaded_dot: "Default for non-merge operations."
  }
}