class: CommandLineTool
id: ../../../prequel.cwl
inputs:
- id: in_seqs
  doc: "Only produce output for specified sequences.  Argument should\nbe comma-separated\
    \ list of names of ancestral nodes."
  type: string
  inputBinding:
    prefix: --seqs
- id: in_exclude
  doc: "(for use with --seqs) Exclude rather than include specified\nsequences."
  type: boolean
  inputBinding:
    prefix: --exclude
- id: in_keep_gaps
  doc: Retain gaps in output, as described above.
  type: boolean
  inputBinding:
    prefix: --keep-gaps
- id: in_no_probs
  doc: "Instead of reporting a probability distribution for each ancestral\nbase,\
    \ output the base with the maximum posterior probability.\nOutput will be in FASTA\
    \ format to files having suffix \".fa\" rather\nthan \".probs\".  If used with\
    \ --keep-gaps, gap characters ('-') will\nappear in reconstructed sequences."
  type: boolean
  inputBinding:
    prefix: --no-probs
- id: in_suff_stats
  doc: "Output a table of probability vectors and counts, pooling\ntogether all nodes\
    \ of the tree (or a subset defined by\n--seqs).  Produces a file that can be used\
    \ for code estimation\nby pbsTrain.  Output file will have suffix \".stats\"."
  type: File
  inputBinding:
    prefix: --suff-stats
- id: in_encode
  doc: "Encode probabilities using given code and output as binary\nfiles.  Output\
    \ files will have suffix \".bin\" rather than \".probs\""
  type: File
  inputBinding:
    prefix: --encode
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nAlignment format (default is to guess format from file\
    \ content).\nNote that the program msa_view can be used for conversion."
  type: File
  inputBinding:
    prefix: --msa-format
- id: in_refseq
  doc: "(for use with --msa-format MAF) Read the complete text of the\nreference sequence\
    \ from <fname> (FASTA format) and combine it\nwith the contents of the MAF file\
    \ to produce a complete,\nordered representation of the alignment.  The reference\n\
    sequence of the MAF file is assumed to be the one that appears\nfirst in each\
    \ block."
  type: File
  inputBinding:
    prefix: --refseq
- id: in_gibbs
  doc: "(experimental) Estimate posterior probabilities by Gibbs sampling\nrather\
    \ than by the sum-product algorithm.  Sample each sequence\n<nsamples> times and\
    \ estimate posterior probabilities as fraction\nof times each base appeared at\
    \ each position.  This option is used\nby default if a dinucleotide or trinucleotide\
    \ model is given (exact\ninference not possible).   NOT YET IMPLEMENTED"
  type: string
  inputBinding:
    prefix: --gibbs
- id: in_independence_dot
  doc: Specifically, each base is assumed to have been inserted
  type: string
  inputBinding:
    position: 0
- id: in___
  doc: 0.000039        0.998460        0.000052
  type: double
  inputBinding:
    position: 0
- id: in___
  doc: 0.000065        0.001755        0.000030
  type: double
  inputBinding:
    position: 1
- id: in_zero_dot_zero_zero_zero_four_two_seven
  doc: 0.271307        0.000599        0.727668
  type: double
  inputBinding:
    position: 2
- id: in___
  doc: 0.000039        0.998460        0.000052
  type: double
  inputBinding:
    position: 3
- id: in_zero_dot_zero_two_five_eight_two_six
  doc: 0.000179        0.973813        0.000182
  type: double
  inputBinding:
    position: 4
- id: in___
  doc: 0.000065        0.001755        0.000030
  type: double
  inputBinding:
    position: 0
- id: in___
  doc: 0.000039        0.998460        0.000052
  type: double
  inputBinding:
    position: 1
- id: in_zero_do_tone_two_five_eight_one_one
  doc: 0.000393        0.873431        0.000365
  type: double
  inputBinding:
    position: 2
- id: in_zero_dot_zero_zero_four_eight_seven_eight
  doc: 0.018097        0.118851        0.858174
  type: double
  inputBinding:
    position: 0
- id: in_zero_dot_zero_zero_zero_zero_three_zero
  doc: 0.001637        0.000064        0.998269
  type: double
  inputBinding:
    position: 1
- id: in_data_dot
  doc: The --suff-stats option produces a more compact output
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suff_stats
  doc: "Output a table of probability vectors and counts, pooling\ntogether all nodes\
    \ of the tree (or a subset defined by\n--seqs).  Produces a file that can be used\
    \ for code estimation\nby pbsTrain.  Output file will have suffix \".stats\"."
  type: File
  outputBinding:
    glob: $(inputs.in_suff_stats)
cwlVersion: v1.1
baseCommand:
- prequel
