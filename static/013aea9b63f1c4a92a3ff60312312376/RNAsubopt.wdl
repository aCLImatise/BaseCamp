version 1.0

task RNAsubopt {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? noconv
    File? in_file
    File? outfile
    Boolean? auto_id
    File? id_prefix
    Int? max_bp_span
    Boolean? constraint
    Boolean? enforce_constraint
    File? shape
    String? delta_energy
    Boolean? sorted
    Int? stoch_bt
    Boolean? nonredundant
    Boolean? circ
    Boolean? dos
    Boolean? zuker
    Boolean? g_quad
    Float? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? log_ml
    File? param_file
    String molecule_dot
    String structures_dot
  }
  command <<<
    RNAsubopt \
      ~{molecule_dot} \
      ~{structures_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (enforce_constraint) then "--enforceConstraint" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if (nonredundant) then "--nonRedundant" else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (dos) then "--dos" else ""} \
      ~{if (zuker) then "--zuker" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if (log_ml) then "--logML" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose.  (default=off)"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\".  (default=off)"
    in_file: "Read a file instead of reading from stdin."
    outfile: "[=<filename>]    Print output to file instead of stdout."
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names).  (default=`sequence')"
    max_bp_span: "Set the maximum base pair span.  (default=`-1')"
    constraint: "[=<filename>] Apply structural constraint(s) during"
    enforce_constraint: "Enforce base pairs given by round brackets ( )\\nin structure constraint.  (default=off)"
    shape: "Use SHAPE reactivity data in the folding\\nrecursions (does not work for Zuker\\nsuboptimals)."
    delta_energy: "Compute suboptimal structures with energy in a\\ncertain range of the optimum (kcal/mol)."
    sorted: "Sort the suboptimal structures by energy and\\nlexicographical order.  (default=off)"
    stoch_bt: "Randomly draw structures according to their\\nprobability in the Boltzmann ensemble."
    nonredundant: "Enable non-redundant sampling strategy.\\n(default=off)"
    circ: "Assume a circular (instead of linear) RNA"
    dos: "Compute density of states instead of secondary"
    zuker: "Compute Zuker suboptimals instead of all\\nsuboptimal structures within an energy band\\naround the MFE.  (default=off)"
    g_quad: "Incoorporate G-Quadruplex formation.\\n(default=off)"
    temp: "Rescale energy parameters to a temperature in\\ndegrees centigrade.  (default=`37.0')"
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.  (default=off)"
    dangles: "Specify \\\"dangling end\\\" model for bases\\nadjacent to helices in free ends and\\nmulti-loops.  (default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).  (default=off)"
    no_gu: "Do not allow GU pairs.  (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices.\\n(default=off)"
    log_ml: "Recompute energies of structures using a\\nlogarithmic energy function for multi-loops\\nbefore output.  (default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    molecule_dot: "(default=off)"
    structures_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_id_prefix = "${in_id_prefix}"
  }
}