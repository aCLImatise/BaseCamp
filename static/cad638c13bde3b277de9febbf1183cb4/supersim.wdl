version 1.0

task Supersim {
  input {
    String? out_files
    Boolean? n_pop
    Boolean? n_ind
    String? n_sites
    String? er_rate
    Boolean? depth
    Boolean? p_var
    Boolean? m_freq
    Boolean? inbreeding_coefficient_population
    Boolean? model
    Boolean? simpler_and
    Boolean? base_freq
  }
  command <<<
    supersim \
      ~{if defined(out_files) then ("-outfiles " +  '"' + out_files + '"') else ""} \
      ~{true="-npop" false="" n_pop} \
      ~{true="-nind" false="" n_ind} \
      ~{if defined(n_sites) then ("-nsites " +  '"' + n_sites + '"') else ""} \
      ~{if defined(er_rate) then ("-errate " +  '"' + er_rate + '"') else ""} \
      ~{true="-depth" false="" depth} \
      ~{true="-pvar" false="" p_var} \
      ~{true="-mfreq" false="" m_freq} \
      ~{true="-F" false="" inbreeding_coefficient_population} \
      ~{true="-model" false="" model} \
      ~{true="-simpleRand" false="" simpler_and} \
      ~{true="-base_freq" false="" base_freq}
  >>>
  parameter_meta {
    out_files: "PREFIX.seq PREFIX.glf PREFIX.frq PREFIX.arg"
    n_pop: "Number of populations. This MUST be set before -nind [1]"
    n_ind: "Number of diploid individuals for each population [10]"
    n_sites: "of sites [500000]"
    er_rate: "sequencing error rate [0.0075]"
    depth: "Mean sequencing depth [5]"
    p_var: "Probability that a site is variable in the population [0.015]"
    m_freq: "Minimum population frequency [0.0001]"
    inbreeding_coefficient_population: "inbreeding coefficient for each population [0]"
    model: "0=fixed errate 1=variable errate [1]"
    simpler_and: "boolean [1]"
    base_freq: "Background allele frequencies for A,C,G,T [0.25 0.25 0.25 0.25]"
  }
}