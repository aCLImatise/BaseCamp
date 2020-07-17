version 1.0

task GmerCaller {
  input {
    String? training_size
    String? runs
    String? num_threads
    Boolean? header
    Boolean? non_canonical
    Boolean? prob_cut_off
    Boolean? alternatives
    Boolean? info
    Boolean? no_genotypes
    String? model
    String? params
    String? coverage
    Boolean? increase_debug_level
    String arguments
    String counts_file
  }
  command <<<
    gmer_caller \
      ~{arguments} \
      ~{counts_file} \
      ~{if defined(training_size) then ("--training_size " +  '"' + training_size + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--non_canonical" false="" non_canonical} \
      ~{true="--prob_cutoff" false="" prob_cut_off} \
      ~{true="--alternatives" false="" alternatives} \
      ~{true="--info" false="" info} \
      ~{true="--no_genotypes" false="" no_genotypes} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{true="-D" false="" increase_debug_level}
  >>>
  parameter_meta {
    training_size: "- Use NUM markers for training (default 100000)"
    runs: "- Perfom NUMBER runs of model training (use 0 for no training)"
    num_threads: "- Use NUM threads (min 1, max 32, default 16)"
    header: "- Print table header"
    non_canonical: "- Output non-canonical genotypes"
    prob_cut_off: "- probability cutoff for calling genotype (default 0)"
    alternatives: "- Print probabilities of all alternative genotypes"
    info: "- Print information about individual"
    no_genotypes: "- Print only summary information, not actual genotypes"
    model: "- Model type (full, diploid, haploid)"
    params: "- Model parameters (error, p0, p1, p2, coverage, size, size2)"
    coverage: "- Average coverage of reads"
    increase_debug_level: "- increase debug level"
    arguments: ""
    counts_file: ""
  }
}