version 1.0

task Scrm {
  input {
    String? l_set_recombination
    String? sr
    String? set_window_length
    String? use_island_model
    String? ei
    String? assume_symmetric_rate
    String? m_change_rate
    String? j_m_set
    String? i_j_m
    String? ma
    String? ema
    String? es
    String? eps
    String? ej
    String? n_set_size
    String? i_change_size
    String? set_day_size
    String? set_exponential_growth
    String? i_exponential_rate
    String? set_exponential_rate
    String? change_exponential_growth
    String? set_mutation_rate
    Boolean? print_genealogies_newick
    Boolean? print_genealogies_oriented
    Boolean? print_tmrca_length
    Boolean? os_fs
    Boolean? sc
    File? in_it
    Boolean? print_model
  }
  command <<<
    scrm \
      ~{if defined(l_set_recombination) then ("-r " +  '"' + l_set_recombination + '"') else ""} \
      ~{if defined(sr) then ("-sr " +  '"' + sr + '"') else ""} \
      ~{if defined(set_window_length) then ("-l " +  '"' + set_window_length + '"') else ""} \
      ~{if defined(use_island_model) then ("-I " +  '"' + use_island_model + '"') else ""} \
      ~{if defined(ei) then ("-eI " +  '"' + ei + '"') else ""} \
      ~{if defined(assume_symmetric_rate) then ("-M " +  '"' + assume_symmetric_rate + '"') else ""} \
      ~{if defined(m_change_rate) then ("-eM " +  '"' + m_change_rate + '"') else ""} \
      ~{if defined(j_m_set) then ("-m " +  '"' + j_m_set + '"') else ""} \
      ~{if defined(i_j_m) then ("-em " +  '"' + i_j_m + '"') else ""} \
      ~{if defined(ma) then ("-ma " +  '"' + ma + '"') else ""} \
      ~{if defined(ema) then ("-ema " +  '"' + ema + '"') else ""} \
      ~{if defined(es) then ("-es " +  '"' + es + '"') else ""} \
      ~{if defined(eps) then ("-eps " +  '"' + eps + '"') else ""} \
      ~{if defined(ej) then ("-ej " +  '"' + ej + '"') else ""} \
      ~{if defined(n_set_size) then ("-n " +  '"' + n_set_size + '"') else ""} \
      ~{if defined(i_change_size) then ("-en " +  '"' + i_change_size + '"') else ""} \
      ~{if defined(set_day_size) then ("-eN " +  '"' + set_day_size + '"') else ""} \
      ~{if defined(set_exponential_growth) then ("-g " +  '"' + set_exponential_growth + '"') else ""} \
      ~{if defined(i_exponential_rate) then ("-eg " +  '"' + i_exponential_rate + '"') else ""} \
      ~{if defined(set_exponential_rate) then ("-G " +  '"' + set_exponential_rate + '"') else ""} \
      ~{if defined(change_exponential_growth) then ("-eG " +  '"' + change_exponential_growth + '"') else ""} \
      ~{if defined(set_mutation_rate) then ("-t " +  '"' + set_mutation_rate + '"') else ""} \
      ~{true="-T" false="" print_genealogies_newick} \
      ~{true="-O" false="" print_genealogies_oriented} \
      ~{true="-L" false="" print_tmrca_length} \
      ~{true="-oSFS" false="" os_fs} \
      ~{true="-SC" false="" sc} \
      ~{if defined(in_it) then ("-init " +  '"' + in_it + '"') else ""} \
      ~{true="--print-model" false="" print_model}
  >>>
  parameter_meta {
    l_set_recombination: "<L>       Set recombination rate to R and locus length to L."
    sr: "<R>      Change the recombination rate R at sequence position p."
    set_window_length: "Set the approximation window length to l."
    use_island_model: "<s1> ... <sn> [<M>]   Use an island model with npop populations, where s1 to sn individuals are sampled each population. Optionally assume a symmetric migration rate of M."
    ei: "<s1> ... <sn> [<M>]     Sample s1 to sn indiviuals from their corresponding populations at time t."
    assume_symmetric_rate: "Assume a symmetric migration rate of M/(npop-1)."
    m_change_rate: "<M>      Change the symmetric migration rate to M/(npop-1) at time t."
    j_m_set: "<j> <M>   Set the migration rate from population j to population i to M"
    i_j_m: "<i> <j> <M>   Set the migration rate from population j to population i to M at time t."
    ma: "<M21> ...   Sets the (backwards) migration matrix."
    ema: "<M11> <M21> ...    Changes the migration matrix at time t"
    es: "<i> <p>  Population admixture. Replaces a fraction of 1-p of population i with individuals a from population npop + 1 which is ignored afterwards (forward in time). "
    eps: "<i> <j> <p>  Partial Population admixture. Replaces a fraction of 1-p of population i with individuals a from population j."
    ej: "<i> <j>  Speciation event at time t. Creates population j from individuals of population i."
    n_set_size: "<n>       Set the present day size of population i to n*N0."
    i_change_size: "<i> <n>  Change the size of population i to n*N0 at time t."
    set_day_size: "<n>      Set the present day size of all populations to n*N0."
    set_exponential_growth: "<a>       Set the exponential growth rate of population i to a."
    i_exponential_rate: "<i> <a>  Change the exponential growth rate of population i to a at time t."
    set_exponential_rate: "Set the exponential growth rate of all populations to a."
    change_exponential_growth: "<a>      Change the exponential growth rate of all populations to a at time t."
    set_mutation_rate: "Set the mutation rate to theta = 4N0*mu, where mu is the  neutral mutation rate per locus."
    print_genealogies_newick: "Print the simulated local genealogies in Newick format."
    print_genealogies_oriented: "Print the simulated local genealogies in Oriented Forest format."
    print_tmrca_length: "Print the TMRCA and the local tree length for each segment."
    os_fs: "Print the Site Frequency Spectrum for each locus."
    sc: "[ms|rel|abs] Scaling of sequence positions. Either relative (rel) to the locus length between 0 and 1, absolute (abs) in base pairs or as in ms (default)."
    in_it: "Read genealogies at the beginning of the sequence."
    print_model: "Prints information about the demographic model."
  }
}