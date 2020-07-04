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
    String? id_prefix
    String? id_delim
    String? shape_conversion
    Boolean? mis
    String? c_factor
    String? n_factor
    String? ribo_sum_file
    Boolean? ribo_sum_scoring
    Boolean? old
    String program
    String contributions
  }
  command <<<
    RNAeval \
      ~{program} \
      ~{contributions} \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--full-help" false="" full_help} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--jobs" false="" jobs} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--msa" false="" msa} \
      ~{true="--auto-id" false="" auto_id} \
      ~{if defined(id_prefix) then ("--id-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(id_delim) then ("--id-delim " +  '"' + id_delim + '"') else ""} \
      ~{if defined(shape_conversion) then ("--shapeConversion " +  '"' + shape_conversion + '"') else ""} \
      ~{true="--mis" false="" mis} \
      ~{if defined(c_factor) then ("--cfactor " +  '"' + c_factor + '"') else ""} \
      ~{if defined(n_factor) then ("--nfactor " +  '"' + n_factor + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum_file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{true="--ribosum_scoring" false="" ribo_sum_scoring} \
      ~{true="--old" false="" old}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    full_help: "Print help, including hidden options, and exit"
    verbose: "Print out energy contribution of each loop in the structure. (default=off)"
    jobs: "[=number]           Split batch input into jobs and start processing in parallel using multiple threads. A value of 0 indicates to use as many parallel threads as computation cores are available. (default=`0')"
    in_file: "Read a file instead of reading from stdin"
    msa: "Input is multiple sequence alignment in Stockholm 1.0 format (default=off)"
    auto_id: "Automatically generate an ID for each sequence. (default=off)"
    id_prefix: "Prefix for automatically generated IDs (as used in output file names) (default=`sequence')"
    id_delim: "Change the delimiter between prefix and increasing number for automatically generated IDs (as used in output file names) (default=`_')"
    shape_conversion: "+ [optional parameters]"
    mis: "Output \"most informative sequence\" instead of simple consensus: For each column of the alignment output the set of nucleotides with frequency greater than average in IUPAC notation. (default=off)"
    c_factor: "Set the weight of the covariance term in the energy function (default=`1.0')"
    n_factor: "Set the penalty for non-compatible sequences in the covariance term of the energy function (default=`1.0')"
    ribo_sum_file: "use specified Ribosum Matrix instead of normal energy model. Matrixes to use should be 6x6 matrices, the order of the terms is AU, CG, GC, GU, UA, UG."
    ribo_sum_scoring: "use ribosum scoring matrix. The matrix is chosen according to the minimal and maximal pairwise identities of the sequences in the file. (default=off)"
    old: "use old energy evaluation, treating gaps as characters. (default=off)"
    program: "--noconv                  Do not automatically substitude nucleotide \"T\" with \"U\" (default=off)"
    contributions: "(default=`D')"
  }
}