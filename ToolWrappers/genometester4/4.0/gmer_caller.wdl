version 1.0

task GmerCaller {
  input {
    Int? training_size
    Int? runs
    Int? num_threads
    Boolean? header
    Boolean? non_canonical
    Boolean? prob_cut_off
    Boolean? alternatives
    Boolean? info
    Boolean? no_genotypes
    String? model
    Int? params
    Int? coverage
    Boolean? increase_debug_level
    String arguments
  }
  command <<<
    gmer_caller \
      ~{arguments} \
      ~{if defined(training_size) then ("--training_size " +  '"' + training_size + '"') else ""} \
      ~{if defined(runs) then ("--runs " +  '"' + runs + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (non_canonical) then "--non_canonical" else ""} \
      ~{if (prob_cut_off) then "--prob_cutoff" else ""} \
      ~{if (alternatives) then "--alternatives" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (no_genotypes) then "--no_genotypes" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (increase_debug_level) then "-D" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  }
  output {
    File out_stdout = stdout()
  }
}