version 1.0

task RNAeval {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? jobs
    File? in_file
    Boolean? msa
    Boolean? auto_id
    File? id_prefix
    Int? id_delim
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Int? energy_model
    File? param_file
    Boolean? circ
    Boolean? g_quad
    Boolean? log_ml
    File? shape
    Boolean? shape_method
    String? shape_conversion
    Boolean? mis
    Float? c_factor
    Float? n_factor
    File? ribo_sum_file
    Boolean? ribo_sum_scoring
    Boolean? old
    String program
    String molecule_dot
    String characters_dot
  }
  command <<<
    RNAeval \
      ~{program} \
      ~{molecule_dot} \
      ~{characters_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (msa) then "--msa" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(id_delim) then ("--id-delim " +  '"' + id_delim + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if defined(energy_model) then ("--energyModel " +  '"' + energy_model + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if (log_ml) then "--logML" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if (shape_method) then "--shapeMethod" else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if (ribo_sum_scoring) then "--ribosum_scoring" else ""} \
      ~{if (old) then "--old" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Print out energy contribution of each loop in\\nthe structure.\\n(default=off)"
    jobs: "[=number]           Split batch input into jobs and start\\nprocessing in parallel using multiple\\nthreads. A value of 0 indicates to use as\\nmany parallel threads as computation cores\\nare available.\\n(default=`0')"
    in_file: "Read a file instead of reading from stdin"
    msa: "Input is multiple sequence alignment in\\nStockholm 1.0 format\\n(default=off)"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`sequence')"
    id_delim: "Change the delimiter between prefix and\\nincreasing number for automatically generated\\nIDs (as used in output file names)\\n(default=`_')"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    energy_model: "Rarely used option to fold sequences from the\\nartificial ABCD... alphabet, where A pairs B,\\nC-D etc.  Use the energy parameters for GC\\n(-e 1) or AU (-e 2) pairs."
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    circ: "Assume a circular (instead of linear) RNA"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm\\n(default=off)"
    log_ml: "Recalculate energies of structures using a\\nlogarithmic energy function for multi-loops\\nbefore output.\\n(default=off)"
    shape: "file        Use SHAPE reactivity data in the folding\\nrecursions (does not work for PF yet)"
    shape_method: "=[D/Z/W] + [optional parameters]\\nSpecify the method how to convert SHAPE\\nreactivity data to pseudo energy\\ncontributions\\n(default=`D')"
    shape_conversion: "/C/S/L/O  + [optional parameters]\\nSpecify the method used to convert SHAPE\\nreactivities to pairing probabilities when\\nusing the SHAPE approach of Zarringhalam et\\nal.\\n(default=`O')"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequency greater than average in IUPAC\\nnotation.\\n(default=off)"
    c_factor: "Set the weight of the covariance term in the\\nenergy function\\n(default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in\\nthe covariance term of the energy function\\n(default=`1.0')"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal\\nenergy model. Matrixes to use should be 6x6\\nmatrices, the order of the terms is AU, CG,\\nGC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is\\nchosen according to the minimal and maximal\\npairwise identities of the sequences in the\\nfile.\\n(default=off)"
    old: "use old energy evaluation, treating gaps as"
    program: "--noconv                  Do not automatically substitude nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    molecule_dot: "(default=off)"
    characters_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}