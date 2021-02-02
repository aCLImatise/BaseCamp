version 1.0

task RNAalifold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? color
    Boolean? aln
    Boolean? nops
    Boolean? part_func
    Boolean? me_a
    Boolean? mis
    Int? stoch_bt
    Int? stoch_bt_en
    Boolean? circ
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
    String program
    String molecule_dot
    String characters_dot
  }
  command <<<
    RNAalifold \
      ~{program} \
      ~{molecule_dot} \
      ~{characters_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (aln) then "--aln" else ""} \
      ~{if (nops) then "--noPS" else ""} \
      ~{if (part_func) then "--partfunc" else ""} \
      ~{if (me_a) then "--MEA" else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
      ~{if (circ) then "--circ" else ""} \
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
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    color: "Produce a colored version of the consensus\\nstrcture plot \\\"alirna.ps\\\" (default b&w\\nonly)\\n(default=off)"
    aln: "Produce a colored and structure annotated\\nalignment in PostScript format in the file\\n\\\"aln.ps\\\" in the current directory.\\n(default=off)"
    nops: "Do not produce postscript output\\n(default=off)"
    part_func: "[=INT]          Calculate the partition function and base\\npairing probability matrix in addition to the\\nmfe structure. Default is calculation of mfe\\nstructure only.\\n(default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy)"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequence greater than average in IUPAC\\nnotation.\\n(default=off)"
    stoch_bt: "Stochastic backtrack. Compute a certain number\\nof random structures with a probability\\ndependend on the partition function. See -p\\noption in RNAsubopt."
    stoch_bt_en: "same as \\\"-s\\\" but also print out the energies\\nand probabilities of the backtraced\\nstructures."
    circ: "Assume a circular (instead of linear) RNA"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
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
    program: "-C, --constraint              Calculate structures subject to constraints.\\nThe constraining structure will be read from\\n'stdin', the alignment has to be given as a\\nfile name on the command line.\\n(default=off)"
    molecule_dot: "(default=off)"
    characters_dot: "(default=off)"
  }
  output {
    File out_stdout = stdout()
  }
}