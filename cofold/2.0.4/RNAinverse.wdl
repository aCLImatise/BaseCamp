version 1.0

task RNAinverse {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? repeat
    String? alphabet
    Boolean? verbose
    String? function
    Float? final
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNAinverse \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--repeat" false="" repeat} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(final) then ("--final " +  '"' + final + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    full_help: "Print help, including hidden options, and exit"
    repeat: "[=INT]         Search repeatedly for the same structure. If an argument is supplied to this option it  must follow the option flag immediately. E.g.:  -R5 (default=`100')"
    alphabet: "Find sequences using only nucleotides from a given  alphabet."
    verbose: "In conjunction with a negative value supplied to  -R, print the last subsequence and substructure  for each unsuccessful search. (default=off)"
    function: "Use minimum energy (-Fm), partition function  folding (-Fp) or both (-Fmp). (default=`m')"
    final: "In combination with -Fp stop search when sequence  is found with E(s)-F is smaller than final,  where F=-kT*ln(Q)."
    temp: "Rescale energy parameters to a temperature of temp  C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing  energies for tri-, tetra- and hexaloop hairpins.  Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases  adjacent to helices in free ends and multi-loops (default=`2')"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of  using the default parameter set."
  }
}