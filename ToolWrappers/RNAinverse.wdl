version 1.0

task RNAinverse {
  input {
    Boolean? detailed_help
    Boolean? full_help
    String? alphabet
    Boolean? print_last_subsequence
    String? function
    Float? final
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
    String alphabet_dot
  }
  command <<<
    RNAinverse \
      ~{program} \
      ~{alphabet_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (print_last_subsequence) then "-R" else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(final) then ("--final " +  '"' + final + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    alphabet: "Find sequences using only nucleotides from a given"
    print_last_subsequence: ", print the last subsequence and substructure"
    function: "Use minimum energy (-Fm), partition function\\nfolding (-Fp) or both (-Fmp).\\n(default=`m')"
    final: "In combination with -Fp stop search when sequence\\nis found with E(s)-F is smaller than final,\\nwhere F=-kT*ln(Q)."
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    program: "-R, --repeat[=INT]         Search repeatedly for the same structure.\\nIf an argument is supplied to this option it\\nmust follow the option flag immediately. E.g.:\\n-R5\\n(default=`100')"
    alphabet_dot: "-v, --verbose              In conjunction with a negative value supplied to "
  }
  output {
    File out_stdout = stdout()
  }
}