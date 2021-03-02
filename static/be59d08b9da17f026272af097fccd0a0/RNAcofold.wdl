version 1.0

task RNAcofold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? noconv
    Boolean? nops
    Boolean? part_func
    Boolean? all_pf
    Boolean? concentrations
    File? conc_file
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
    RNAcofold \
      ~{program} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (nops) then "--noPS" else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if (all_pf) then "--all_pf" else ""} \
      ~{if (concentrations) then "--concentrations" else ""} \
      ~{if defined(conc_file) then ("--concfile " +  '"' + conc_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    nops: "Do not produce postscript output\\n(default=off)"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix in addition to the\\nmfe structure. Default is calculation of mfe\\nstructure only.\\n(default=`1')"
    all_pf: "Compute the partition function and free\\nenergies not only of the hetero-dimer\\nconsisting of the two input sequences (the\\n\\\"AB dimer\\\"), but also of the homo-dimers AA\\nand BB as well as A and B monomers.\\n(default=off)"
    concentrations: "In addition to everything listed under the -a\\noption, read in initial monomer\\nconcentrations and compute the expected\\nequilibrium concentrations of the 5 possible\\nspecies (AB, AA, BB, A, B).\\n(default=off)"
    conc_file: "Specify a file with initial concentrations for\\nthe to sequences."
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special stabilizing energies for\\ncertain tetra-loops. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    program: "-C, --constraint              Calculate structures subject to constraints.\\n(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}