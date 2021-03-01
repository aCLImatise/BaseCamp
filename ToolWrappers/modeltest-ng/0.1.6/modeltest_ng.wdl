version 1.0

task Modeltestng {
  input {
    String? datatype
    File? sets_file_format
    File? pipes_output_file
    Int? processes
    File? partitions
    Int? rng_seed
    String? topology
    File? utree
    Boolean? force
    Boolean? disable_checkpoint
    String? asc_bias
    Boolean? frequencies
    Int? models
    Boolean? schemes
    Boolean? template
    String? eps
    String? to_l
    Boolean? smooth_frequencies
    Boolean? gamma_rates
    Boolean? no_compress
    Boolean? keep_params
    Boolean? verbose
    String nt
    String aa
    String ml
    String mp
    String fixed_ml_jc
    String fixed_ml_gtr
    String fixed_mp
    String random
    String user
    String lewis
    String felsenstein
    String stam_a_takis
    String ra_xml
    String phy_ml
    String mr_bayes
    String paup
  }
  command <<<
    modeltest_ng \
      ~{nt} \
      ~{aa} \
      ~{ml} \
      ~{mp} \
      ~{fixed_ml_jc} \
      ~{fixed_ml_gtr} \
      ~{fixed_mp} \
      ~{random} \
      ~{user} \
      ~{lewis} \
      ~{felsenstein} \
      ~{stam_a_takis} \
      ~{ra_xml} \
      ~{phy_ml} \
      ~{mr_bayes} \
      ~{paup} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(sets_file_format) then ("--input " +  '"' + sets_file_format + '"') else ""} \
      ~{if defined(pipes_output_file) then ("--output " +  '"' + pipes_output_file + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(partitions) then ("--partitions " +  '"' + partitions + '"') else ""} \
      ~{if defined(rng_seed) then ("--rngseed " +  '"' + rng_seed + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(utree) then ("--utree " +  '"' + utree + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (disable_checkpoint) then "--disable-checkpoint" else ""} \
      ~{if defined(asc_bias) then ("--asc-bias " +  '"' + asc_bias + '"') else ""} \
      ~{if (frequencies) then "--frequencies" else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if (schemes) then "--schemes" else ""} \
      ~{if (template) then "--template" else ""} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if (smooth_frequencies) then "--smooth-frequencies" else ""} \
      ~{if (gamma_rates) then "--gamma-rates" else ""} \
      ~{if (no_compress) then "--no-compress" else ""} \
      ~{if (keep_params) then "--keep-params" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    datatype: "sets the data type"
    sets_file_format: "sets the input alignment file (FASTA or PHYLIP format, required)"
    pipes_output_file: "pipes the output into a file"
    processes: "sets the number of processors to use (shared memory)"
    partitions: "sets a partitioning scheme"
    rng_seed: "sets the seed for the random number generator"
    topology: "sets the starting topology"
    utree: "sets a user tree"
    force: "force output overriding"
    disable_checkpoint: "disable checkpoint writing"
    asc_bias: "[:values]     includes ascertainment bias correction\\ncheck modeltest manual for more information"
    frequencies: "[ef]                sets the candidate models frequencies\\ne: estimated - maximum likelihood (DNA) / empirical (AA)\\nf: fixed - equal (DNA) / model defined (AA)"
    models: "sets the candidate model matrices separated by commas.\\nuse '+' or '-' prefix for updating the default list.\\ne.g., \\\"-m JTT,LG\\\" evaluates JTT and LG only .\\n\\\"-m +LG4X,+LG4M,-LG\\\" adds LG4 models and removes LG and from the list.\\ndna: *JC *HKY *TrN *TPM1 *TPM2 *TPM3\\n*TIM1 *TIM2 *TIM3 *TVM *GTR\\nprotein: *DAYHOFF *LG *DCMUT *JTT *MTREV *WAG *RTREV *CPREV\\n*VT *BLOSUM62 *MTMAM *MTART *MTZOA *PMB *HIVB *HIVW\\n*JTT-DCMUT *FLU *STMTREV LG4M LG4X GTR\\n* included by default"
    schemes: "[3|5|7|11|203]          sets the number of predefined DNA substitution schemes evaluated\\n3:   JC/F81, K80/HKY, SYM/GTR\\n5:   + TrNef/TrN, TPM1/TPM1uf\\n7:   + TIM1ef/TIM1, TVMef/TVM\\n11:  + TPM2/TPM2uf, TPM3/TPM3uf, TIM2ef/TIM2, TIM3ef/TIM3\\n203: All possible GTR submatrices"
    template: "[tool]                 sets candidate models according to a specified tool"
    eps: "sets the model optimization epsilon"
    to_l: "sets the parameter optimization tolerance"
    smooth_frequencies: "forces frequencies smoothing"
    gamma_rates: "[a|g]               sets gamma rates mode\\na                  uses the average (or mean) per category (default)\\nm                  uses the median per category"
    no_compress: "disables pattern compression\\nmodeltest ignores if there are missing states"
    keep_params: "keep branch lengths fixed"
    verbose: "run in verbose mode"
    nt: "nucleotide"
    aa: "amino acid"
    ml: "maximum likelihood"
    mp: "maximum parsimony"
    fixed_ml_jc: "fixed maximum likelihood (JC)"
    fixed_ml_gtr: "fixed maximum likelihood (GTR)"
    fixed_mp: "fixed maximum parsimony (default)"
    random: "random generated tree"
    user: "fixed user defined (requires -u argument)"
    lewis: "Lewis (2001)"
    felsenstein: "Felsenstein\\nrequires number of invariant sites"
    stam_a_takis: "Leaché et al. (2015)\\nrequires invariant sites composition"
    ra_xml: "RAxML (DNA 3 schemes / AA full search)"
    phy_ml: "PhyML (DNA full search / 14 AA matrices)"
    mr_bayes: "MrBayes (DNA 3 schemes / 8 AA matrices)"
    paup: "PAUP* (DNA full search / AA full search)"
  }
  output {
    File out_stdout = stdout()
    File out_pipes_output_file = "${in_pipes_output_file}"
  }
}