version 1.0

task RNApdist {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    String? compare
    Boolean? backtrack
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
  }
  command <<<
    RNApdist \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{true="--backtrack" false="" backtrack} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide \"T\" with \"U\" (default=off)"
    compare: "|m|f|c         Specify the comparison directive. (default=`p')"
    backtrack: "[=<filename>]  Print an \"alignment\" with gaps of the profiles. The aligned structures are written to <filename>, if specified. (default=`none')"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "set energy model for treatment of dangling bases (possible values=\"0\", \"2\" default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
  }
}