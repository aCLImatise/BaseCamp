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
    Boolean? aln_stk
    Boolean? nops
    Boolean? no_dp
    String? input_format
    Boolean? continuous_ids
    Boolean? auto_id
    String? id_prefix
    Int? max_bp_span
    Boolean? constraint
    Boolean? batch
    Boolean? enforce_constraint
    Boolean? ss_cons
    File? shape
    String? shape_method
    Boolean? part_func
    Boolean? me_a
    Boolean? mis
    Int? stoch_bt
    Int? stoch_bt_en
    Boolean? nonredundant
    Boolean? circ
    Boolean? g_quad
    Boolean? sci
    String? temp
    Boolean? no_tetra
    Int? dangles
    Boolean? no_lp
    Boolean? no_gu
    Boolean? no_closing_gu
    String? c_factor
    String? n_factor
    Boolean? end_gaps
    String? ribo_sum_file
    Boolean? ribo_sum_scoring
    Boolean? old
    String? param_file
    String? input_zero_dot_aln
    String? input_one_dot_aln
  }
  command <<<
    RNAalifold \
      ~{input_zero_dot_aln} \
      ~{input_one_dot_aln} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--jobs" false="" jobs} \
      ~{true="--noconv" false="" noconv} \
      ~{true="--color" false="" color} \
      ~{true="--aln" false="" aln} \
      ~{true="--aln-stk" false="" aln_stk} \
      ~{true="--noPS" false="" nops} \
      ~{true="--noDP" false="" no_dp} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{true="--continuous-ids" false="" continuous_ids} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--batch" false="" batch} \
      ~{true="--enforceConstraint" false="" enforce_constraint} \
      ~{true="--SS_cons" false="" ss_cons} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(shape_method) then ("--shapeMethod " +  '"' + shape_method + '"') else ""} \
      ~{true="--partfunc" false="" part_func} \
      ~{true="--MEA" false="" me_a} \
      ~{true="--mis" false="" mis} \
      ~{if defined(stoch_bt) then ("--stochBT " +  '"' + stoch_bt + '"') else ""} \
      ~{if defined(stoch_bt_en) then ("--stochBT_en " +  '"' + stoch_bt_en + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundant} \
      ~{true="--circ" false="" circ} \
      ~{true="--gquad" false="" g_quad} \
      ~{true="--sci" false="" sci} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{true="--noTetra" false="" no_tetra} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{true="--noLP" false="" no_lp} \
      ~{true="--noGU" false="" no_gu} \
      ~{true="--noClosingGU" false="" no_closing_gu} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{true="--endgaps" false="" end_gaps} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{true="--ribosum_scoring" false="" ribo_sum_scoring} \
      ~{true="--old" false="" old} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Be verbose. (default=off)"
    quiet: "Be quiet. (default=off)"
    jobs: "[=number]           Split batch input into jobs and start processing in parallel using multiple threads. A value of 0 indicates to use as many parallel threads as computation cores are available. (default=`0')"
    noconv: "Do not automatically substitute nucleotide \"T\" with \"U\" (default=off)"
    color: "Produce a colored version of the consensus structure plot \"alirna.ps\" (default b&w only) (default=off)"
    aln: "Produce a colored and structure annotated alignment in PostScript format in the file \"aln.ps\" in the current directory. (default=off)"
    aln_stk: "[=prefix]        Create a multi-Stockholm formatted output file. (default=`RNAalifold_results')"
    nops: "Do not produce postscript drawing of the mfe structure. (default=off)"
    no_dp: "Do not produce dot-plot postscript file containing base pair or stack probabilitities. (default=off)"
    input_format: "|S|F|M    File format of the input multiple sequence alignment (MSA)."
    continuous_ids: "Use continuous alignment ID numbering when no alignment ID can be retrieved from input data. (default=off)"
    auto_id: "Automatically generate an ID for each alignment. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`alignment')"
    max_bp_span: "Set the maximum base pair span (default=`-1')"
    constraint: "[=<filename>] Calculate structures subject to constraints. The constraining structure will be read from 'stdin', the alignment has to be given as a file name on the command line. (default=`')"
    batch: "Use constraints for all alignment records. (default=off)"
    enforce_constraint: "Enforce base pairs given by round brackets ( ) in structure constraint (default=off)"
    ss_cons: "Use consensus structures from Stockholm file (#=GF SS_cons) as constraint (default=off)"
    shape: ",file2       Use SHAPE reactivity data to guide structure predictions"
    shape_method: "[mX][bY]   Specify the method how to convert SHAPE reactivity data to pseudo energy contributions (default=`D')"
    part_func: "[=INT]          Calculate the partition function and base pairing probability matrix in addition to the mfe structure. Default is calculation of mfe structure only. (default=`1')"
    me_a: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure, where the expected accuracy is computed from the pair probabilities: each base pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given by the probability of not forming a pair. (default=`1.')"
    mis: "Output \"most informative sequence\" instead of simple consensus: For each column of the alignment output the set of nucleotides with frequency greater than average in IUPAC notation. (default=off)"
    stoch_bt: "Stochastic backtrack. Compute a certain number of random structures with a probability dependend on the partition function. See -p option in RNAsubopt."
    stoch_bt_en: "same as \"-s\" but also print out the energies and probabilities of the backtraced structures."
    nonredundant: "Enable non-redundant sampling strategy. (default=off)"
    circ: "Assume a circular (instead of linear) RNA molecule. (default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the structure prediction algorithm. (default=off)"
    sci: "Compute the structure conservation index (SCI) for the MFE consensus structure of the alignment (default=off)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    no_tetra: "Do not include special tabulated stabilizing energies for tri-, tetra- and hexaloop hairpins. (default=off)"
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    no_lp: "Produce structures without lonely pairs (helices of length 1). (default=off)"
    no_gu: "Do not allow GU pairs (default=off)"
    no_closing_gu: "Do not allow GU pairs at the end of helices (default=off)"
    c_factor: "Set the weight of the covariance term in the energy function (default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in the covariance term of the energy function (default=`1.0')"
    end_gaps: "Score pairs with endgaps same as gap-gap pairs. (default=off)"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal energy model. Matrixes to use should be 6x6 matrices, the order of the terms is AU, CG, GC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is chosen according to the minimal and maximal pairwise identities of the sequences in the file. (default=off)"
    old: "use old energy evaluation, treating gaps as characters. (default=off)"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    input_zero_dot_aln: ""
    input_one_dot_aln: ""
  }
}