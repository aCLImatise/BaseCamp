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
    Int? temp
    Int? max_dist_one
    Int? max_dist_two
    Boolean? no_tetra
    File? parameter_file
    Int? dangles
    Boolean? no_gu
    Boolean? no_closing_gu
    String program
    String molecule_dot
  }
  command <<<
    RNA2Dfold \
      ~{program} \
      ~{molecule_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(neighborhood) then ("--neighborhood " +  '"' + neighborhood + '"') else ""} \
      ~{if defined(pf_scale) then ("--pfScale " +  '"' + pf_scale + '"') else ""} \
      ~{if (no_bt) then "--noBT" else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(max_dist_one) then ("--maxDist1 " +  '"' + max_dist_one + '"') else ""} \
      ~{if defined(max_dist_two) then ("--maxDist2 " +  '"' + max_dist_two + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(parameter_file) then ("--parameterFile " +  '"' + parameter_file + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    num_threads: "Set the number of threads used for calculations\\n(only available when compiled with OpenMP\\nsupport)"
    part_func: "calculate partition function and thus,\\nBoltzmann probabilities and Gibbs free energy\\n(default=off)"
    stoch_bt: "backtrack a certain number of Boltzmann samples\\nfrom the appropriate k,l neighborhood(s)"
    neighborhood: ":<l>    backtrack structures from certain\\nk,l-neighborhood only, can be specified\\nmultiple times (<k>:<l>,<m>:<n>,...)"
    pf_scale: "scaling factor for pf to avoid overflows"
    no_bt: "do not backtrack structures, calculate energy\\ncontributions only\\n(default=off)"
    circ: "Assume a circular (instead of linear) RNA"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    max_dist_one: "maximum distance to first reference structure"
    max_dist_two: "maximum distance to second reference structure"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    parameter_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(possible values=\\\"0\\\", \\\"2\\\" default=`2')"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    program: "--noconv                  Do not automatically substitude nucleotide \\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    molecule_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}