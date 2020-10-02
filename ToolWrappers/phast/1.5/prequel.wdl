version 1.0

task Prequel {
  input {
    String? seqs
    Boolean? exclude
    Boolean? keep_gaps
    Boolean? no_probs
    File? suff_stats
    File? encode
    File? msa_format
    File? refseq
    String? gibbs
    String independence_dot
    Float __
    Float zero_dot_zero_zero_zero_four_two_seven
    Float zero_dot_zero_two_five_eight_two_six
    Float __
    Float zero_do_tone_two_five_eight_one_one
    Float zero_dot_zero_zero_zero_zero_three_zero
    String data_dot
  }
  command <<<
    prequel \
      ~{independence_dot} \
      ~{__} \
      ~{zero_dot_zero_zero_zero_four_two_seven} \
      ~{zero_dot_zero_two_five_eight_two_six} \
      ~{__} \
      ~{zero_do_tone_two_five_eight_one_one} \
      ~{zero_dot_zero_zero_zero_zero_three_zero} \
      ~{data_dot} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (keep_gaps) then "--keep-gaps" else ""} \
      ~{if (no_probs) then "--no-probs" else ""} \
      ~{if (suff_stats) then "--suff-stats" else ""} \
      ~{if defined(encode) then ("--encode " +  '"' + encode + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(gibbs) then ("--gibbs " +  '"' + gibbs + '"') else ""}
  >>>
  parameter_meta {
    seqs: "Only produce output for specified sequences.  Argument should\\nbe comma-separated list of names of ancestral nodes."
    exclude: "(for use with --seqs) Exclude rather than include specified\\nsequences."
    keep_gaps: "Retain gaps in output, as described above."
    no_probs: "Instead of reporting a probability distribution for each ancestral\\nbase, output the base with the maximum posterior probability.\\nOutput will be in FASTA format to files having suffix \\\".fa\\\" rather\\nthan \\\".probs\\\".  If used with --keep-gaps, gap characters ('-') will\\nappear in reconstructed sequences."
    suff_stats: "Output a table of probability vectors and counts, pooling\\ntogether all nodes of the tree (or a subset defined by\\n--seqs).  Produces a file that can be used for code estimation\\nby pbsTrain.  Output file will have suffix \\\".stats\\\"."
    encode: "Encode probabilities using given code and output as binary\\nfiles.  Output files will have suffix \\\".bin\\\" rather than \\\".probs\\\""
    msa_format: "|PHYLIP|MPM|MAF|SS\\nAlignment format (default is to guess format from file content).\\nNote that the program msa_view can be used for conversion."
    refseq: "(for use with --msa-format MAF) Read the complete text of the\\nreference sequence from <fname> (FASTA format) and combine it\\nwith the contents of the MAF file to produce a complete,\\nordered representation of the alignment.  The reference\\nsequence of the MAF file is assumed to be the one that appears\\nfirst in each block."
    gibbs: "(experimental) Estimate posterior probabilities by Gibbs sampling\\nrather than by the sum-product algorithm.  Sample each sequence\\n<nsamples> times and estimate posterior probabilities as fraction\\nof times each base appeared at each position.  This option is used\\nby default if a dinucleotide or trinucleotide model is given (exact\\ninference not possible).   NOT YET IMPLEMENTED"
    independence_dot: "Specifically, each base is assumed to have been inserted"
    __: "0.000065        0.001755        0.000030"
    zero_dot_zero_zero_zero_four_two_seven: "0.271307        0.000599        0.727668"
    zero_dot_zero_two_five_eight_two_six: "0.000179        0.973813        0.000182"
    zero_do_tone_two_five_eight_one_one: "0.000393        0.873431        0.000365"
    zero_dot_zero_zero_zero_zero_three_zero: "0.001637        0.000064        0.998269"
    data_dot: "The --suff-stats option produces a more compact output"
  }
  output {
    File out_stdout = stdout()
    File out_suff_stats = "${in_suff_stats}"
  }
}