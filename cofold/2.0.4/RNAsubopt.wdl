version 1.0

task RNAsubopt {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? constraint
    Boolean? noconv
    String? delta_energy
    String? delta_energy_post
    Boolean? sorted
    String? stoch_bt
    Boolean? circ
    Boolean? dos
    Boolean? zuker
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? log_ml
    String? param_file
  }
  command <<<
    RNAsubopt \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if defined(delta_energy_post) then ("--deltaEnergyPost " +  '"' + delta_energy_post + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{true="--circ" false="" circ} \
      ~{true="--dos" false="" dos} \
      ~{true="--zuker" false="" zuker} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{true="--logML" false="" log_ml} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    constraint: "Calculate structures subject to constraints. (default=off)"
    noconv: "Do not automatically substitude nucleotide  \"T\" with \"U\" (default=off)"
    delta_energy: "Compute suboptimal structures with energy in a  certain range of the optimum (kcal/mol).  Default is calculation of mfe structure only."
    delta_energy_post: "Only print structures with energy within range  of the mfe after post reevaluation of  energies."
    sorted: "Sort the suboptimal structures by energy. (default=off)"
    stoch_bt: "Instead of producing all suboptimals in an  energy range, produce a random sample of  suboptimal structures, drawn with  probabilities equal to their Boltzmann  weights via stochastic backtracking in the  partition function. The -e and -p options are  mutually exclusive."
    circ: "Assume a circular (instead of linear) RNA  molecule. (default=off)"
    dos: "Compute density of states instead of secondary  structures (default=off)"
    zuker: "Compute Zuker suboptimals instead of all  suboptimal structures within an engery band  arround the MFE. (default=off)"
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop  hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for  bases adjacent to helices in free ends and  multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs  (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    log_ml: "Recalculate energies of structures using a  logarithmic energy function for multi-loops  before output.  (default=off)"
    param_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
  }
}