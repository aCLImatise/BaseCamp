version 1.0

task ModeltestNg {
  input {
    String? datatype
    String? sets_file_fasta
    String? pipes_output_file
    String? processes
    String? partitions
    String? rng_seed
    String? topology
    String? utree
    Boolean? force
    Boolean? disable_checkpoint
    String? asc_bias
    Boolean? frequencies
    String? models
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
    String if_ok
    String minor_problems_eg
    String serious_trouble_eg
  }
  command <<<
    modeltest-ng \
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
      ~{if_ok} \
      ~{minor_problems_eg} \
      ~{serious_trouble_eg} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(sets_file_fasta) then ("--input " +  '"' + sets_file_fasta + '"') else ""} \
      ~{if defined(pipes_output_file) then ("--output " +  '"' + pipes_output_file + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(partitions) then ("--partitions " +  '"' + partitions + '"') else ""} \
      ~{if defined(rng_seed) then ("--rngseed " +  '"' + rng_seed + '"') else ""} \
      ~{if defined(topology) then ("--topology " +  '"' + topology + '"') else ""} \
      ~{if defined(utree) then ("--utree " +  '"' + utree + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--disable-checkpoint" false="" disable_checkpoint} \
      ~{if defined(asc_bias) then ("--asc-bias " +  '"' + asc_bias + '"') else ""} \
      ~{true="--frequencies" false="" frequencies} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{true="--schemes" false="" schemes} \
      ~{true="--template" false="" template} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{true="--smooth-frequencies" false="" smooth_frequencies} \
      ~{true="--gamma-rates" false="" gamma_rates} \
      ~{true="--no-compress" false="" no_compress} \
      ~{true="--keep-params" false="" keep_params} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    datatype: "sets the data type"
    sets_file_fasta: "sets the input alignment file (FASTA or PHYLIP format, required)"
    pipes_output_file: "pipes the output into a file"
    processes: "sets the number of processors to use (shared memory)"
    partitions: "sets a partitioning scheme"
    rng_seed: "sets the seed for the random number generator"
    topology: "sets the starting topology"
    utree: "sets a user tree"
    force: "force output overriding"
    disable_checkpoint: "disable checkpoint writing"
    asc_bias: "[:values]     includes ascertainment bias correction check modeltest manual for more information"
    frequencies: "[ef]                sets the candidate models frequencies e: estimated - maximum likelihood (DNA) / empirical (AA) f: fixed - equal (DNA) / model defined (AA)"
    models: "sets the candidate model matrices separated by commas. use '+' or '-' prefix for updating the default list. e.g., \"-m JTT,LG\" evaluates JTT and LG only . \"-m +LG4X,+LG4M,-LG\" adds LG4 models and removes LG and from the list. dna: *JC *HKY *TrN *TPM1 *TPM2 *TPM3 *TIM1 *TIM2 *TIM3 *TVM *GTR protein: *DAYHOFF *LG *DCMUT *JTT *MTREV *WAG *RTREV *CPREV *VT *BLOSUM62 *MTMAM *MTART *MTZOA *PMB *HIVB *HIVW *JTT-DCMUT *FLU *STMTREV LG4M LG4X GTR * included by default"
    schemes: "[3|5|7|11|203]          sets the number of predefined DNA substitution schemes evaluated 3:   JC/F81, K80/HKY, SYM/GTR 5:   + TrNef/TrN, TPM1/TPM1uf 7:   + TIM1ef/TIM1, TVMef/TVM 11:  + TPM2/TPM2uf, TPM3/TPM3uf, TIM2ef/TIM2, TIM3ef/TIM3 203: All possible GTR submatrices"
    template: "[tool]                 sets candidate models according to a specified tool raxml                  RAxML (DNA 3 schemes / AA full search) phyml                  PhyML (DNA full search / 14 AA matrices) mrbayes                MrBayes (DNA 3 schemes / 8 AA matrices) paup                   PAUP* (DNA full search / AA full search)"
    eps: "sets the model optimization epsilon"
    to_l: "sets the parameter optimization tolerance"
    smooth_frequencies: "forces frequencies smoothing"
    gamma_rates: "[a|g]               sets gamma rates mode a                  uses the average (or mean) per category (default) m                  uses the median per category"
    no_compress: "disables pattern compression modeltest ignores if there are missing states"
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
    felsenstein: "Felsenstein requires number of invariant sites"
    stam_a_takis: "Leaché et al. (2015) requires invariant sites composition"
    if_ok: "if OK,"
    minor_problems_eg: "if minor problems (e.g., invalid arguments or data),"
    serious_trouble_eg: "if serious trouble (e.g., execution crashed)."
  }
}