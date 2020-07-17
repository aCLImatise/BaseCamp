version 1.0

task CoFold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? constraint
    Boolean? noconv
    Boolean? nops
    Boolean? part_func
    Boolean? me_a
    Boolean? circ
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    String rna_fold
  }
  command <<<
    CoFold \
      ~{rna_fold} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--noPS" false="" nops} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--MEA" false="" me_a} \
      ~{true="--circ" false="" circ} \
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
    nops: "Do not produce postscript drawing of the mfe  structure. (default=off)"
    part_func: "[=INT]          Calculate the partition function and base  pairing probability matrix. (default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)  structure, where the expected accuracy is  computed from the pair probabilities: each  base pair (i,j) gets a score 2*gamma*p_ij and  the score of an unpaired base is given by the  probability of not forming a pair. (default=`1.')"
    circ: "Assume a circular (instead of linear) RNA  molecule. (default=off)"
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop  hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for  bases adjacent to helices in free ends and  multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs  (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
    rna_fold: ""
  }
}