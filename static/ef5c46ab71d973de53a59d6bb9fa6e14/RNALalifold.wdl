version 1.0

task RNALalifold {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? noconv
    String? input_format
    Boolean? csv
    Boolean? aln
    Boolean? aln_eps
    Boolean? aln_eps_ss
    Boolean? aln_stk
    Boolean? auto_id
    String? id_prefix
    Boolean? split_contributions
    File? shape
    String? shape_method
    Int? max_bp_span
    String? threshold
    Boolean? mis
    Boolean? g_quad
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? param_file
    String? c_factor
    String? n_factor
    String? ribo_sum_file
    Boolean? ribo_sum_scoring
    String structures_dot
  }
  command <<<
    RNALalifold \
      ~{structures_dot} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--noconv" false="" noconv} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{true="--csv" false="" csv} \
      ~{true="--aln" false="" aln} \
      ~{true="--aln-EPS" false="" aln_eps} \
      ~{true="--aln-EPS-ss" false="" aln_eps_ss} \
      ~{true="--aln-stk" false="" aln_stk} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{true="--split-contributions" false="" split_contributions} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(shape_method) then ("--shapeMethod " +  '"' + shape_method + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--mis" false="" mis} \
      ~{true="--gquad" false="" g_quad} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{true="--ribosum_scoring" false="" ribo_sum_scoring}
  >>>
  parameter_meta {
    verbose: "Be verbose. (default=off)"
    quiet: "Be quiet. (default=off)"
    noconv: "Do not automatically substitute nucleotide \"T\" with \"U\" (default=off)"
    input_format: "|S|F|M    File format of the input multiple sequence alignment (MSA)."
    csv: "Create comma separated output (csv) (default=off)"
    aln: "[=prefix]            Produce output alignments and secondary structure plots for each hit found."
    aln_eps: "[=prefix]        Produce colored and structure annotated subalignment for each hit"
    aln_eps_ss: "[=prefix]     Produce colored consensus secondary structure plots in PostScript format"
    aln_stk: "[=prefix]        Add hits to a multi-Stockholm formatted output file. (default=`RNALalifold_results')"
    auto_id: "Automatically generate an ID for each alignment. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`alignment')"
    split_contributions: "Split the free energy contributions into separate parts (default=off)"
    shape: ",file2       Use SHAPE reactivity data to guide structure predictions"
    shape_method: "[mX][bY]   Specify the method how to convert SHAPE reactivity data to pseudo energy contributions (default=`D')"
    max_bp_span: "Set the maximum allowed separation of a base pair to span. I.e. no pairs (i,j) with j-i>span will be allowed. (default=`70')"
    threshold: "Energy threshold in kcal/mol per nucleotide above which secondary structure hits are omitted in the output. (default=`-0.1')"
    mis: "Output \"most informative sequence\" instead of simple consensus: For each column of the alignment output the set of nucleotides with frequency greater than average in IUPAC notation. (default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. Mostly for testing. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    c_factor: "Set the weight of the covariance term in the energy function (default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in the covariance term of the energy function (default=`1.0')"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal energy model. Matrixes to use should be 6x6 matrices, the order of the terms is AU, CG, GC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is chosen according to the minimal and maximal pairwise identities of the sequences in the file. (default=off)"
    structures_dot: "-h, --help                    Print help and exit --detailed-help           Print help, including all details and hidden options, and exit --full-help               Print help, including hidden options, and exit -V, --version                 Print version and exit"
  }
}