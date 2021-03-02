version 1.0

task RNAalifold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? quiet
    Boolean? jobs
    Boolean? noconv
    Boolean? color
    Boolean? aln
    File? aln_stk
    Boolean? nops
    Boolean? no_dp
    File? input_format
    Boolean? continuous_ids
    Boolean? auto_id
    File? id_prefix
    Int? max_bp_span
    Boolean? constraint
    Boolean? batch
    Boolean? enforce_constraint
    Boolean? ss_cons
    File? shape
    Boolean? part_func
    Boolean? me_a
    Boolean? mis
    Int? stoch_bt
    Int? stoch_bt_en
    Boolean? nonredundant
    Boolean? circ
    Boolean? g_quad
    Boolean? sci
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    Float? c_factor
    Float? n_factor
    Boolean? end_gaps
    File? ribo_sum_file
    Boolean? ribo_sum_scoring
    Boolean? old
    File? param_file
    String structure_dot
    String alignment_dot
    String predictions
    String contributions
    String molecule_dot
    String characters_dot
  }
  command <<<
    RNAalifold \
      ~{structure_dot} \
      ~{alignment_dot} \
      ~{predictions} \
      ~{contributions} \
      ~{molecule_dot} \
      ~{characters_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (aln) then "--aln" else ""} \
      ~{if (aln_stk) then "--aln-stk" else ""} \
      ~{if (nops) then "--noPS" else ""} \
      ~{if (no_dp) then "--noDP" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (continuous_ids) then "--continuous-ids" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (enforce_constraint) then "--enforceConstraint" else ""} \
      ~{if (ss_cons) then "--SS_cons" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if (me_a) then "--MEA" else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
      ~{if (nonredundant) then "--nonRedundant" else ""} \
      ~{if (circ) then "--circ" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if (sci) then "--sci" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if (end_gaps) then "--endgaps" else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if (ribo_sum_scoring) then "--ribosum_scoring" else ""} \
      ~{if (old) then "--old" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose.\\n(default=off)"
    quiet: "Be quiet.\\n(default=off)"
    jobs: "[=number]           Split batch input into jobs and start\\nprocessing in parallel using multiple\\nthreads. A value of 0 indicates to use as\\nmany parallel threads as computation cores\\nare available.\\n(default=`0')"
    noconv: "Do not automatically substitute nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    color: "Produce a colored version of the consensus\\nstructure plot \\\"alirna.ps\\\" (default b&w\\nonly)\\n(default=off)"
    aln: "Produce a colored and structure annotated\\nalignment in PostScript format in the file\\n\\\"aln.ps\\\" in the current directory.\\n(default=off)"
    aln_stk: "[=prefix]        Create a multi-Stockholm formatted output file.\\n(default=`RNAalifold_results')"
    nops: "Do not produce postscript drawing of the mfe"
    no_dp: "Do not produce dot-plot postscript file\\ncontaining base pair or stack\\nprobabilitities.\\n(default=off)"
    input_format: "|S|F|M    File format of the input multiple sequence\\nalignment (MSA)."
    continuous_ids: "Use continuous alignment ID numbering when no\\nalignment ID can be retrieved from input\\ndata.\\n(default=off)"
    auto_id: "Automatically generate an ID for each"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`alignment')"
    max_bp_span: "Set the maximum base pair span\\n(default=`-1')"
    constraint: "[=<filename>] Calculate structures subject to constraints.\\nThe constraining structure will be read from\\n'stdin', the alignment has to be given as a\\nfile name on the command line.\\n(default=`')"
    batch: "Use constraints for all alignment records.\\n(default=off)"
    enforce_constraint: "Enforce base pairs given by round brackets ( )\\nin structure constraint\\n(default=off)"
    ss_cons: "Use consensus structures from Stockholm file\\n(#=GF SS_cons) as constraint\\n(default=off)"
    shape: ",file2       Use SHAPE reactivity data to guide structure"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix in addition to the\\nmfe structure. Default is calculation of mfe\\nstructure only.\\n(default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)\\nstructure, where the expected accuracy is\\ncomputed from the pair probabilities: each\\nbase pair (i,j) gets a score 2*gamma*p_ij and\\nthe score of an unpaired base is given by the\\nprobability of not forming a pair.\\n(default=`1.')"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequency greater than average in IUPAC\\nnotation.\\n(default=off)"
    stoch_bt: "Stochastic backtrack. Compute a certain number\\nof random structures with a probability\\ndependend on the partition function. See -p\\noption in RNAsubopt."
    stoch_bt_en: "same as \\\"-s\\\" but also print out the energies\\nand probabilities of the backtraced\\nstructures."
    nonredundant: "Enable non-redundant sampling strategy.\\n(default=off)"
    circ: "Assume a circular (instead of linear) RNA"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm.\\n(default=off)"
    sci: "Compute the structure conservation index (SCI)\\nfor the MFE consensus structure of the\\nalignment\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    c_factor: "Set the weight of the covariance term in the\\nenergy function\\n(default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in\\nthe covariance term of the energy function\\n(default=`1.0')"
    end_gaps: "Score pairs with endgaps same as gap-gap pairs.\\n(default=off)"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal\\nenergy model. Matrixes to use should be 6x6\\nmatrices, the order of the terms is AU, CG,\\nGC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is\\nchosen according to the minimal and maximal\\npairwise identities of the sequences in the\\nfile.\\n(default=off)"
    old: "use old energy evaluation, treating gaps as"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    structure_dot: "(default=off)"
    alignment_dot: "(default=off)"
    predictions: "--shapeMethod=D[mX][bY]   Specify the method how to convert SHAPE"
    contributions: "(default=`D')"
    molecule_dot: "(default=off)"
    characters_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
    File out_aln_stk = "${in_aln_stk}"
    File out_id_prefix = "${in_id_prefix}"
  }
}