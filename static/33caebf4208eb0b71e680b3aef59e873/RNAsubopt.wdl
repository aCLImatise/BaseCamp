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
    Boolean? batch
    Boolean? canonical_bp_only
    Boolean? enforce_constraint
    File? shape
    Boolean? shape_method
    String? shape_conversion
    String? delta_energy
    String? delta_energy_post
    Boolean? sorted
    Int? stoch_bt
    Int? stoch_bt_en
    Boolean? nonredundant
    Boolean? circ
    Boolean? dos
    Boolean? zuker
    Boolean? g_quad
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Boolean? log_ml
    File? param_file
    String molecule_dot
    String structures
  }
  command <<<
    RNAsubopt \
      ~{molecule_dot} \
      ~{structures} \
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
      ~{if (batch) then "--batch" else ""} \
      ~{if (canonical_bp_only) then "--canonicalBPonly" else ""} \
      ~{if (enforce_constraint) then "--enforceConstraint" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if (shape_method) then "--shapeMethod" else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if defined(delta_energy) then ("--deltaEnergy " +  '"' + delta_energy + '"') else ""} \
      ~{if defined(delta_energy_post) then ("--deltaEnergyPost " +  '"' + delta_energy_post + '"') else ""} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
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
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose\\n(default=off)"
    noconv: "Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    in_file: "Read a file instead of reading from stdin"
    outfile: "[=<filename>]    Print output to file instead of stdout"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`sequence')"
    max_bp_span: "Set the maximum base pair span\\n(default=`-1')"
    constraint: "[=<filename>] Calculate structures subject to constraints.\\n(default=`')"
    batch: "Use constraints for multiple sequences.\\n(default=off)"
    canonical_bp_only: "Remove non-canonical base pairs from the\\nstructure constraint\\n(default=off)"
    enforce_constraint: "Enforce base pairs given by round brackets ( )\\nin structure constraint\\n(default=off)"
    shape: "Use SHAPE reactivity data in the folding\\nrecursions (does not work for Zuker\\nsuboptimals and stochastic backtracking yet)"
    shape_method: "=[D/Z/W] + [optional parameters]\\nSpecify the method how to convert SHAPE\\nreactivity data to pseudo energy\\ncontributions\\n(default=`D')"
    shape_conversion: "+ [optional parameters]\\nSpecify the method used to convert SHAPE\\nreactivities to pairing probabilities when\\nusing the SHAPE approach of Zarringhalam et\\nal.\\n(default=`O')"
    delta_energy: "Compute suboptimal structures with energy in a\\ncertain range of the optimum (kcal/mol).\\nDefault is calculation of mfe structure only."
    delta_energy_post: "Only print structures with energy within range\\nof the mfe after post reevaluation of\\nenergies."
    sorted: "Sort the suboptimal structures by energy.\\n(default=off)"
    stoch_bt: "Instead of producing all suboptimals in an\\nenergy range, produce a random sample of\\nsuboptimal structures, drawn with\\nprobabilities equal to their Boltzmann\\nweights via stochastic backtracking in the\\npartition function. The -e and -p options are\\nmutually exclusive."
    stoch_bt_en: "Same as \\\"--stochBT\\\" but also print out the\\nenergies and probabilities of the backtraced\\nstructures."
    nonredundant: "Enable non-redundant sampling strategy.\\n(default=off)"
    circ: "Assume a circular (instead of linear) RNA"
    dos: "Compute density of states instead of secondary"
    zuker: "Compute Zuker suboptimals instead of all\\nsuboptimal structures within an engery band\\naround the MFE.\\n(default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm\\n(no support of G-quadruplex prediction for\\nstochastic backtracking and Zuker-style\\nsuboptimals yet)\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    log_ml: "Recalculate energies of structures using a\\nlogarithmic energy function for multi-loops\\nbefore output.  (default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    molecule_dot: "(default=off)"
    structures: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_id_prefix = "${in_id_prefix}"
  }
}