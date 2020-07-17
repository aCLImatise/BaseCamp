version 1.0

task RNAeval {
  input {
    Boolean? detailed_help
    Boolean? verbose
    String? temp
    Boolean? no_tetra
    Int? dangles
    Int? energy_model
    String? param_file
    Boolean? circ
    Boolean? log_ml
    String program
  }
  command <<<
    RNAeval \
      ~{program} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if defined(energy_model) then ("--energyModel " +  '"' + energy_model + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{true="--circ" false="" circ} \
      ~{true="--logML" false="" log_ml}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    verbose: "Print out energy contribution of each loop in the  structure. (default=off)"
    temp: "Rescale energy parameters to a temperature of temp  C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop hairpins.  Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and multi-loops (default=`2')"
    energy_model: "Rarely used option to fold sequences from the  artificial ABCD... alphabet, where A pairs B,  C-D etc.  Use the energy parameters for GC (-e  1) or AU (-e 2) pairs."
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
    circ: "Assume a circular (instead of linear) RNA  molecule. (default=off)"
    log_ml: "Recalculate energies of structures using a  logarithmic energy function for multi-loops  before output. (default=off)"
    program: "--noconv               Do not automatically substitude nucleotide \"T\"  with \"U\" (default=off)"
  }
}