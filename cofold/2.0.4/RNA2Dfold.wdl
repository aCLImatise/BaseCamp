version 1.0

task RNA2Dfold {
  input {
    Boolean? detailed_help
    Int? num_threads
    Boolean? part_func
    Int? stoch_bt
    String? neighborhood
    String? pf_scale
    Boolean? no_bt
    Boolean? circ
    String? temp
    Int? max_dist_one
    Int? max_dist_two
    Boolean? no_tetra
    String? parameter_file
    Int? dangles
    Boolean? no_gu
    Boolean? no_closing_gu
    String program
  }
  command <<<
    RNA2Dfold \
      ~{program} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{true="--partfunc" false="" part_func} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(neighborhood) then ("--neighborhood " +  '"' + neighborhood + '"') else ""} \
      ~{if defined(pf_scale) then ("--pfScale " +  '"' + pf_scale + '"') else ""} \
      ~{true="--noBT" false="" no_bt} \
      ~{true="--circ" false="" circ} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(max_dist_one) then ("--maxDist1 " +  '"' + max_dist_one + '"') else ""} \
      ~{if defined(max_dist_two) then ("--maxDist2 " +  '"' + max_dist_two + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    num_threads: "Set the number of threads used for calculations  (only available when compiled with OpenMP  support)"
    part_func: "calculate partition function and thus,  Boltzmann probabilities and Gibbs free energy (default=off)"
    stoch_bt: "backtrack a certain number of Boltzmann samples  from the appropriate k,l neighborhood(s)"
    neighborhood: ":<l>    backtrack structures from certain  k,l-neighborhood only, can be specified  multiple times (<k>:<l>,<m>:<n>,...)"
    pf_scale: "scaling factor for pf to avoid overflows"
    no_bt: "do not backtrack structures, calculate energy  contributions only (default=off)"
    circ: "Assume a circular (instead of linear) RNA  molecule. (default=off)"
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    max_dist_one: "maximum distance to first reference structure"
    max_dist_two: "maximum distance to second reference structure"
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop  hairpins. Mostly for testing. (default=off)"
    parameter_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
    dangles: "How to treat \"dangling end\" energies for  bases adjacent to helices in free ends and  multi-loops (possible values=\"0\", \"2\" default=`2')"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    program: "--noconv                  Do not automatically substitude nucleotide  \"T\" with \"U\" (default=off)"
  }
}