version 1.0

task RNAup {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? constraint
    Boolean? no_output_file
    Boolean? no_header
    Boolean? noconv
    Int? u_length
    String? contributions
    Int? window
    Boolean? include_both
    Int? extend_five
    Int? extend_three
    Boolean? interaction_pairwise
    Boolean? interaction_first
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNAup \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--no_output_file" false="" no_output_file} \
      ~{true="--no_header" false="" no_header} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(u_length) then ("--ulength " +  '"' + u_length + '"') else ""} \
      ~{if defined(contributions) then ("--contributions " +  '"' + contributions + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--include_both" false="" include_both} \
      ~{if defined(extend_five) then ("--extend5 " +  '"' + extend_five + '"') else ""} \
      ~{if defined(extend_three) then ("--extend3 " +  '"' + extend_three + '"') else ""} \
      ~{true="--interaction_pairwise" false="" interaction_pairwise} \
      ~{true="--interaction_first" false="" interaction_first} \
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
    no_output_file: "Do not produce an output file (default=off)"
    no_header: "Do not produce a header with the command line  parameters used in the outputfile (default=off)"
    noconv: "Do not automatically substitude nucleotide \"T\"  with \"U\" (default=off)"
    u_length: "specifies the length of the unstructured region  in the output. (default=`4')"
    contributions: "Specify the contributions listed in the output (default=`S')"
    window: "Determine the maximal length of the region of  interaction (default=`25')"
    include_both: "Include the probability of unpaired regions in  both (b) RNAs. By default only the probability of being unpaired in the  longer RNA (target) is used. (default=off)"
    extend_five: "Extend the region of interaction in the target to  some residues on the 5' side"
    extend_three: "Extend the region of interaction in the target to  some residues on the 3' side"
    interaction_pairwise: "Activate pairwise interaction mode (default=off)"
    interaction_first: "Activate interaction mode using first sequence  only (default=off)"
    temp: "Rescale energy parameters to a temperature of  temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop  hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and  multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices  of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
  }
}