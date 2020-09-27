version 1.0

task Shapeit {
  input {
    Boolean? produce_help_message
    Boolean? licence
    Boolean? source
    Int? seed
    Boolean? aligned
    File? arg_shapeitdatetimeuuidloglog_file
    String? exclude_snp
    String? include_snp
    String? exclude_ind
    String? include_ind
    String? exclude_grp
    String? include_grp
    Int? input_from
    File? input_to
    Int? output_from
    Int? output_to
    Boolean? arg_unphased_pedmap
    Int? missing_code
    Boolean? arg_unphased_vcf
    Boolean? arg_genetic_map
    Boolean? arg_reference_set
    String? input_in_it
    Boolean? missing_maf
    Boolean? unphased_genotypes_chromosomex
    Int? burn
    Int? prune
    Int? main
    Int? run
    Boolean? no_mcmc
    Boolean? arg_number_hidden
    Int? states_random
    Int? states_p_match
    Int? states_cov
    Boolean? arg_mean_size
    Boolean? model_version_one
    Int? effective_size
    Float? rho
    String? input_copy_states
    Boolean? arg_phased_haplotypes
    Int v_two_do_tr_eight_three_seven
    String genome
    String account_dot
    String algorithm_dot
  }
  command <<<
    shapeit \
      ~{v_two_do_tr_eight_three_seven} \
      ~{genome} \
      ~{account_dot} \
      ~{algorithm_dot} \
      ~{if (produce_help_message) then "-H" else ""} \
      ~{if (licence) then "--licence" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (arg_shapeitdatetimeuuidloglog_file) then "-L" else ""} \
      ~{if defined(exclude_snp) then ("--exclude-snp " +  '"' + exclude_snp + '"') else ""} \
      ~{if defined(include_snp) then ("--include-snp " +  '"' + include_snp + '"') else ""} \
      ~{if defined(exclude_ind) then ("--exclude-ind " +  '"' + exclude_ind + '"') else ""} \
      ~{if defined(include_ind) then ("--include-ind " +  '"' + include_ind + '"') else ""} \
      ~{if defined(exclude_grp) then ("--exclude-grp " +  '"' + exclude_grp + '"') else ""} \
      ~{if defined(include_grp) then ("--include-grp " +  '"' + include_grp + '"') else ""} \
      ~{if defined(input_from) then ("--input-from " +  '"' + input_from + '"') else ""} \
      ~{if defined(input_to) then ("--input-to " +  '"' + input_to + '"') else ""} \
      ~{if defined(output_from) then ("--output-from " +  '"' + output_from + '"') else ""} \
      ~{if defined(output_to) then ("--output-to " +  '"' + output_to + '"') else ""} \
      ~{if (arg_unphased_pedmap) then "-P" else ""} \
      ~{if defined(missing_code) then ("--missing-code " +  '"' + missing_code + '"') else ""} \
      ~{if (arg_unphased_vcf) then "-V" else ""} \
      ~{if (arg_genetic_map) then "-M" else ""} \
      ~{if (arg_reference_set) then "-R" else ""} \
      ~{if defined(input_in_it) then ("--input-init " +  '"' + input_in_it + '"') else ""} \
      ~{if (missing_maf) then "--missing-maf" else ""} \
      ~{if (unphased_genotypes_chromosomex) then "-X" else ""} \
      ~{if defined(burn) then ("--burn " +  '"' + burn + '"') else ""} \
      ~{if defined(prune) then ("--prune " +  '"' + prune + '"') else ""} \
      ~{if defined(main) then ("--main " +  '"' + main + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if (no_mcmc) then "--no-mcmc" else ""} \
      ~{if (arg_number_hidden) then "-S" else ""} \
      ~{if defined(states_random) then ("--states-random " +  '"' + states_random + '"') else ""} \
      ~{if defined(states_p_match) then ("--states-pmatch " +  '"' + states_p_match + '"') else ""} \
      ~{if defined(states_cov) then ("--states-cov " +  '"' + states_cov + '"') else ""} \
      ~{if (arg_mean_size) then "-W" else ""} \
      ~{if (model_version_one) then "--model-version1" else ""} \
      ~{if defined(effective_size) then ("--effective-size " +  '"' + effective_size + '"') else ""} \
      ~{if defined(rho) then ("--rho " +  '"' + rho + '"') else ""} \
      ~{if defined(input_copy_states) then ("--input-copy-states " +  '"' + input_copy_states + '"') else ""} \
      ~{if (arg_phased_haplotypes) then "-O" else ""}
  >>>
  parameter_meta {
    produce_help_message: "[ --help ]                         Produce help message."
    licence: "Produce licence description."
    source: "Produce source file version details."
    seed: "(=1599704773)              Seed of the random number generator."
    aligned: "Ref allele is aligned on the reference"
    arg_shapeitdatetimeuuidloglog_file: "[ --output-log ] arg (=shapeit_date_time_UUID.log)\\nLog file containing a copy of the\\nscreen output."
    exclude_snp: "List of positions to exclude in\\ninput/output files."
    include_snp: "List of positions to include in\\ninput/output files."
    exclude_ind: "List of samples to exclude in\\ninput/output files."
    include_ind: "List of samples to include in\\ninput/output files."
    exclude_grp: "List of populations to exclude in input\\nfiles. Works only on the reference\\npanel of haplotypes."
    include_grp: "List of populations to include in input\\nfiles. Works only on the reference\\npanel of haplotypes."
    input_from: "(=0)                 First physical position to consider in\\ninput files."
    input_to: "(=1000000000)          Last physical position to consider in\\ninput file."
    output_from: "(=0)                First physical position to output."
    output_to: "(=1000000000)         Last physical position to output."
    arg_unphased_pedmap: "[ --input-ped ] arg                Unphased genotypes in PED/MAP format."
    missing_code: "(=0)               Missing data character in PED/MAP"
    arg_unphased_vcf: "[ --input-vcf ] arg                Unphased genotypes in VCF format."
    arg_genetic_map: "[ --input-map ] arg                Genetic map in HapMap format."
    arg_reference_set: "[ --input-ref ] arg                Reference set of haplotypes in\\nHAPS/SAMPLE format."
    input_in_it: "Phased haplotypes in HAPS/SAMPLE format\\nused for initialisation."
    missing_maf: "MAF based initialisation of missing\\ngenotypes prior to phasing"
    unphased_genotypes_chromosomex: "[ --chrX ]                         Unphased genotypes are from chromosome\\nX non autosomal region."
    burn: "(=7)                       Number of burn-in MCMC iterations."
    prune: "(=8)                      Number of pruning MCMC iterations."
    main: "(=20)                      Number of main MCMC iterations."
    run: "(=1)                        Number of pruning stages"
    no_mcmc: "No MCMC iteration (just phase given the\\nreference panel haplotypes)."
    arg_number_hidden: "[ --states ] arg (=100)            Number of hidden states used for\\nphasing (selected using Hamming\\ndistance minimisation)."
    states_random: "(=0)              Number of hidden states used for\\nphasing (selected at random)."
    states_p_match: "(=0)              Number of hidden states used for\\nphasing (selected using perfect match\\nmaximisation)."
    states_cov: "(=0)                 Number of hidden states used for\\nphasing (selected using perfect match\\nthat maximise coverage of the region)."
    arg_mean_size: "[ --window ] arg (=2)              Mean size of the windows in which\\nconditioning haplotypes are defined."
    model_version_one: "Use the graphical model to represent\\nthe conditioning haplotypes (as in\\nSHAPEIT v1)."
    effective_size: "(=15000)         Effective size of the population."
    rho: "(=0.0004)                   Constant recombination rate."
    input_copy_states: "To specify who to copy from"
    arg_phased_haplotypes: "[ --output-max ] arg               Phased haplotypes in HAPS/SAMPLE"
    v_two_do_tr_eight_three_seven: "[33mBasic options[0m:"
    genome: "-T [ --thread ] arg (=1)              Number of thread used for phasing."
    account_dot: "--duohmm                              Phase pedigrees using the duoHMM "
    algorithm_dot: "-G [ --input-gen ] arg                Unphased genotypes in GEN/SAMPLE "
  }
  output {
    File out_stdout = stdout()
    File out_arg_shapeitdatetimeuuidloglog_file = "${in_arg_shapeitdatetimeuuidloglog_file}"
  }
}