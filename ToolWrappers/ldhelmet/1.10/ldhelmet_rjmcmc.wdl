version 1.0

task LdhelmetRjmcmc {
  input {
    Boolean? _display_version
    Int? seed
    File? arg_name_output
    Int? stats_thin
    Int? burn_in
    Boolean? arg_block_penalty
    Int? prior_rate
    Boolean? arg_sequence_file
    Boolean? arg_twosite_likelihood
    Boolean? arg_pade_coefficients
    Boolean? arg_prior_ancestral
    Boolean? arg_window_size
    Int? pade_resolution
    Int? pade_max_rho
    Int? partition_length
    Int? overlap_length
    String? pos_file
    Float? max_lk_start
    Float? max_lk_end
    Float? max_lk_resolution
    String generator_dot
    String statistics_dot
    String site_dot
    String format_dot
  }
  command <<<
    ldhelmet rjmcmc \
      ~{generator_dot} \
      ~{statistics_dot} \
      ~{site_dot} \
      ~{format_dot} \
      ~{if (_display_version) then "-v" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (arg_name_output) then "-o" else ""} \
      ~{if defined(stats_thin) then ("--stats_thin " +  '"' + stats_thin + '"') else ""} \
      ~{if defined(burn_in) then ("--burn_in " +  '"' + burn_in + '"') else ""} \
      ~{if (arg_block_penalty) then "-b" else ""} \
      ~{if defined(prior_rate) then ("--prior_rate " +  '"' + prior_rate + '"') else ""} \
      ~{if (arg_sequence_file) then "-s" else ""} \
      ~{if (arg_twosite_likelihood) then "-l" else ""} \
      ~{if (arg_pade_coefficients) then "-p" else ""} \
      ~{if (arg_prior_ancestral) then "-a" else ""} \
      ~{if (arg_window_size) then "-w" else ""} \
      ~{if defined(pade_resolution) then ("--pade_resolution " +  '"' + pade_resolution + '"') else ""} \
      ~{if defined(pade_max_rho) then ("--pade_max_rho " +  '"' + pade_max_rho + '"') else ""} \
      ~{if defined(partition_length) then ("--partition_length " +  '"' + partition_length + '"') else ""} \
      ~{if defined(overlap_length) then ("--overlap_length " +  '"' + overlap_length + '"') else ""} \
      ~{if defined(pos_file) then ("--pos_file " +  '"' + pos_file + '"') else ""} \
      ~{if defined(max_lk_start) then ("--max_lk_start " +  '"' + max_lk_start + '"') else ""} \
      ~{if defined(max_lk_end) then ("--max_lk_end " +  '"' + max_lk_end + '"') else ""} \
      ~{if defined(max_lk_resolution) then ("--max_lk_resolution " +  '"' + max_lk_resolution + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _display_version: "[ --version ]                      Display version."
    seed: "(=5489)                    Seed for pseudo-random number"
    arg_name_output: "[ --output_file ] arg              Name of output file."
    stats_thin: "(=1000)              Thinning parameter for summary"
    burn_in: "(=1000)                 Number of iterations for burn-in (in\\naddition to number of iterations to run\\nrjMCMC)."
    arg_block_penalty: "[ --block_penalty ] arg (=10)      Block penalty for rjMCMC."
    prior_rate: "(=1)                 Prior mean on recombination rate."
    arg_sequence_file: "[ --seq_file ] arg                 Sequence file."
    arg_twosite_likelihood: "[ --lk_file ] arg                  Two-site likelihood table."
    arg_pade_coefficients: "[ --pade_file ] arg                Pade coefficients."
    arg_prior_ancestral: "[ --prior_file ] arg               Prior on ancestral allele for each"
    arg_window_size: "[ --window_size ] arg (=50)        Window size."
    pade_resolution: "(=10)           Pade grid increment."
    pade_max_rho: "(=1000)            Maximum Pade grid value."
    partition_length: "(=4001)        Partition length (number of SNPs)."
    overlap_length: "(=200)           Overlap length."
    pos_file: "SNP positions for alternative input"
    max_lk_start: "(=0.001)           Rho value to begin maximum likelihood\\nestimation of background rate."
    max_lk_end: "(=0.29999999999999999)\\nRho value to end maximum likelihood\\nestimation of background rate."
    max_lk_resolution: "(=0.001)      Amount to increment by for maximum\\nlikelihood estimation of background\\nrate.\\n"
    generator_dot: "--num_threads arg (=1)                Number of threads."
    statistics_dot: "-n [ --num_iter ] arg (=10000)        Number of iterations to run rjMCMC."
    site_dot: "-m [ --mut_mat_file ] arg             Mutation matrix."
    format_dot: "--snps_file arg                       SNPs file for alternative input format."
  }
  output {
    File out_stdout = stdout()
    File out_arg_name_output = "${in_arg_name_output}"
  }
}