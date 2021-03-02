version 1.0

task RNALalifold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Boolean? verbose
    Boolean? quiet
    Boolean? noconv
    File? input_format
    Boolean? csv
    Boolean? aln
    Boolean? aln_eps
    Boolean? aln_eps_ss
    Boolean? aln_stk
    Boolean? auto_id
    File? id_prefix
    Boolean? split_contributions
    File? shape
    Int? max_bp_span
    Float? threshold
    Boolean? mis
    Boolean? g_quad
    Int? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    File? param_file
    Float? c_factor
    Float? n_factor
    File? ribo_sum_file
    Boolean? ribo_sum_scoring
    String structures_dot
    File file_dot
    String alignment_dot
    String predictions
    String contributions
  }
  command <<<
    RNALalifold \
      ~{structures_dot} \
      ~{file_dot} \
      ~{alignment_dot} \
      ~{predictions} \
      ~{contributions} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (noconv) then "--noconv" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (aln) then "--aln" else ""} \
      ~{if (aln_eps) then "--aln-EPS" else ""} \
      ~{if (aln_eps_ss) then "--aln-EPS-ss" else ""} \
      ~{if (aln_stk) then "--aln-stk" else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if (split_contributions) then "--split-contributions" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (mis) then "--mis" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (no_tetra) then "--noTetra" else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if (no_gu) then "--noGU" else ""} \
      ~{if (no_closing_gu) then "--noClosingGU" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if (ribo_sum_scoring) then "--ribosum_scoring" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose.\\n(default=off)"
    quiet: "Be quiet.\\n(default=off)"
    noconv: "Do not automatically substitute nucleotide\\n\\\"T\\\" with \\\"U\\\"\\n(default=off)"
    input_format: "|S|F|M    File format of the input multiple sequence\\nalignment (MSA)."
    csv: "Create comma separated output (csv)\\n(default=off)"
    aln: "[=prefix]            Produce output alignments and secondary\\nstructure plots for each hit found."
    aln_eps: "[=prefix]        Produce colored and structure annotated\\nsubalignment for each hit"
    aln_eps_ss: "[=prefix]     Produce colored consensus secondary structure\\nplots in PostScript format"
    aln_stk: "[=prefix]        Add hits to a multi-Stockholm formatted output"
    auto_id: "Automatically generate an ID for each"
    id_prefix: "Prefix for automatically generated IDs (as used\\nin output file names)\\n(default=`alignment')"
    split_contributions: "Split the free energy contributions into\\nseparate parts\\n(default=off)"
    shape: ",file2       Use SHAPE reactivity data to guide structure"
    max_bp_span: "Set the maximum allowed separation of a base\\npair to span. I.e. no pairs (i,j) with\\nj-i>span will be allowed.\\n(default=`70')"
    threshold: "Energy threshold in kcal/mol per nucleotide\\nabove which secondary structure hits are\\nomitted in the output.\\n(default=`-0.1')"
    mis: "Output \\\"most informative sequence\\\" instead of\\nsimple consensus: For each column of the\\nalignment output the set of nucleotides with\\nfrequency greater than average in IUPAC\\nnotation.\\n(default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm\\n(default=off)"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing\\nenergies for tri-, tetra- and hexaloop\\nhairpins. Mostly for testing.\\n(default=off)"
    dangles: "How to treat \\\"dangling end\\\" energies for\\nbases adjacent to helices in free ends and\\nmulti-loops\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    no_gu: "Do not allow GU pairs\\n(default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    c_factor: "Set the weight of the covariance term in the\\nenergy function\\n(default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in\\nthe covariance term of the energy function\\n(default=`1.0')"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal\\nenergy model. Matrixes to use should be 6x6\\nmatrices, the order of the terms is AU, CG,\\nGC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is\\nchosen according to the minimal and maximal\\npairwise identities of the sequences in the\\nfile.\\n(default=off)"
    structures_dot: "-h, --help                    Print help and exit"
    file_dot: "(default=`RNALalifold_results')"
    alignment_dot: "(default=off)"
    predictions: "--shapeMethod=D[mX][bY]   Specify the method how to convert SHAPE"
    contributions: "(default=`D')"
  }
  output {
    File out_stdout = stdout()
    File out_id_prefix = "${in_id_prefix}"
  }
}