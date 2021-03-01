version 1.0

task RNAeval {
  input {
    Boolean? detailed_help
    Boolean? verbose
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Int? energy_model
    File? param_file
    Boolean? circ
    Boolean? log_ml
    String program
    String structure_dot
    String molecule_dot
  }
  command <<<
    RNAeval \
      ~{program} \
      ~{structure_dot} \
      ~{molecule_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if defined(energy_model) then ("--energyModel " +  '"' + energy_model + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (log_ml) then "--logML" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    verbose: "Print out energy contribution of each loop in the"
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    energy_model: "Rarely used option to fold sequences from the\\nartificial ABCD... alphabet, where A pairs B,\\nC-D etc.  Use the energy parameters for GC (-e\\n1) or AU (-e 2) pairs."
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    circ: "Assume a circular (instead of linear) RNA"
    log_ml: "Recalculate energies of structures using a\\nlogarithmic energy function for multi-loops\\nbefore output.\\n(default=off)"
    program: "--noconv               Do not automatically substitude nucleotide \\\"T\\\" \\nwith \\\"U\\\"\\n(default=off)"
    structure_dot: "(default=off)"
    molecule_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}