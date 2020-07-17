version 1.0

task RNAcofold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? constraint
    Boolean? noconv
    Boolean? nops
    Boolean? part_func
    Boolean? all_pf
    Boolean? concentrations
    File? conc_file
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNAcofold \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--noPS" false="" nops} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--all_pf" false="" all_pf} \
      ~{true="--concentrations" false="" concentrations} \
      ~{if defined(conc_file) then ("--concfile " +  '"' + conc_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    constraint: "Calculate structures subject to constraints. (default=off)"
    noconv: "Do not automatically substitude nucleotide  \"T\" with \"U\" (default=off)"
    nops: "Do not produce postscript output (default=off)"
    part_func: "[=INT]          Calculate the partition function and base  pairing probability matrix in addition to the  mfe structure. Default is calculation of mfe  structure only. (default=`1')"
    all_pf: "Compute the partition function and free  energies not only of the hetero-dimer  consisting of the two input sequences (the  \"AB dimer\"), but also of the homo-dimers AA  and BB as well as A and B monomers. (default=off)"
    concentrations: "In addition to everything listed under the -a  option, read in initial monomer  concentrations and compute the expected  equilibrium concentrations of the 5 possible  species (AB, AA, BB, A, B). (default=off)"
    conc_file: "Specify a file with initial concentrations for  the to sequences."
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    no_tetra: "Do not include special stabilizing energies for  certain tetra-loops. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for  bases adjacent to helices in free ends and  multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs  (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
  }
}