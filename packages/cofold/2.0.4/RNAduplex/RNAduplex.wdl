version 1.0

task RNAduplex {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    String? delta_energy
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    String program
  }
  command <<<
    RNAduplex \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide \\\"T\\\"\\nwith \\\"U\\\"\\n(default=off)"
    delta_energy: "Compute suboptimal structures with energy in a\\ncertain range of the optimum (kcal/mol). Default\\nis calculation of mfe structure only."
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop hairpins.\\nMostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs (helices\\nof length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    program: "-s, --sorted               sort the printed output by free energy\\n(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}