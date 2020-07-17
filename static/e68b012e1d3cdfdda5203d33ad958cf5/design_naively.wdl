version 1.0

task DesignNaively.py {
  input {
    Boolean? add_reverse_complements
    String? limit_target_genomes
    String? limit_target_genomes_randomly_with_replacement
    Boolean? print_analysis
    Boolean? debug
    Boolean? verbose
    String? pl
    String? ps
    String dataset
  }
  command <<<
    design_naively.py \
      ~{dataset} \
      ~{true="--add-reverse-complements" false="" add_reverse_complements} \
      ~{if defined(limit_target_genomes) then ("--limit-target-genomes " +  '"' + limit_target_genomes + '"') else ""} \
      ~{if defined(limit_target_genomes_randomly_with_replacement) then ("--limit-target-genomes-randomly-with-replacement " +  '"' + limit_target_genomes_randomly_with_replacement + '"') else ""} \
      ~{true="--print-analysis" false="" print_analysis} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(pl) then ("-pl " +  '"' + pl + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""}
  >>>
  parameter_meta {
    add_reverse_complements: "Add to the output the reverse complement of each probe"
    limit_target_genomes: "(Optional) Use only the first N target genomes in the dataset"
    limit_target_genomes_randomly_with_replacement: "(Optional) Randomly select N target genomes in the dataset with replacement"
    print_analysis: "Print analysis of the probe set's coverage"
    debug: "Debug output"
    verbose: "Verbose output"
    pl: ""
    ps: ""
    dataset: "Label for the target dataset"
  }
}