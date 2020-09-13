version 1.0

task RNAsubopt {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    String? delta_energy
    String? delta_energy_post
    Boolean? sorted
    Int? stoch_bt
    Boolean? circ
    Boolean? dos
    Boolean? zuker
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? log_ml
    File? param_file
    String program
    String molecule_dot
    String structures
  }
  command <<<
    RNAsubopt \
      ~{program} \
      ~{molecule_dot} \
      ~{structures} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if defined(delta_energy_post) then ("--deltaEnergyPost " +  '"' + delta_energy_post + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (dos) then "--dos" else ""} \
      ~{if (zuker) then "--zuker" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if (log_ml) then "--logML" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    delta_energy: "Compute suboptimal structures with energy in a\\ncertain range of the optimum (kcal/mol).\\nDefault is calculation of mfe structure only."
    delta_energy_post: "Only print structures with energy within range\\nof the mfe after post reevaluation of\\nenergies."
    sorted: "Sort the suboptimal structures by energy.\\n(default=off)"
    stoch_bt: "Instead of producing all suboptimals in an\\nenergy range, produce a random sample of\\nsuboptimal structures, drawn with\\nprobabilities equal to their Boltzmann\\nweights via stochastic backtracking in the\\npartition function. The -e and -p options are\\nmutually exclusive."
    circ: "Assume a circular (instead of linear) RNA"
    dos: "Compute density of states instead of secondary"
    zuker: "Compute Zuker suboptimals instead of all\\nsuboptimal structures within an engery band\\narround the MFE.\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    log_ml: "Recalculate energies of structures using a\\nlogarithmic energy function for multi-loops\\nbefore output.  (default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    program: "-C, --constraint              Calculate structures subject to constraints.\\n(default=off)"
    molecule_dot: "(default=off)"
    structures: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}