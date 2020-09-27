version 1.0

task Supersim {
  input {
    Boolean? n_pop
    Boolean? n_ind
    Int? n_sites
    Float? er_rate
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
      ~{if (n_pop) then "-npop" else ""} \
      ~{if (n_ind) then "-nind" else ""} \
      ~{if defined(n_sites) then ("-nsites " +  '"' + n_sites + '"') else ""} \
      ~{if defined(er_rate) then ("-errate " +  '"' + er_rate + '"') else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (p_var) then "-pvar" else ""} \
      ~{if (m_freq) then "-mfreq" else ""} \
      ~{if (inbreeding_coefficient_population) then "-F" else ""} \
      ~{if (model) then "-model" else ""} \
      ~{if (simpler_and) then "-simpleRand" else ""} \
      ~{if (base_freq) then "-base_freq" else ""}
  >>>
  parameter_meta {
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
  output {
    File out_stdout = stdout()
  }
}