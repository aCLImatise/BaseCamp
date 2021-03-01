class: CommandLineTool
id: RNAalifold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_color
  doc: "Produce a colored version of the consensus\nstrcture plot \"alirna.ps\" (default\
    \ b&w\nonly)\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_aln
  doc: "Produce a colored and structure annotated\nalignment in PostScript format\
    \ in the file\n\"aln.ps\" in the current directory.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --aln
- id: in_nops
  doc: "Do not produce postscript output\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noPS
- id: in_part_func
  doc: "[=INT]          Calculate the partition function and base\npairing probability\
    \ matrix in addition to the\nmfe structure. Default is calculation of mfe\nstructure\
    \ only.\n(default=`1')"
  type: boolean?
  inputBinding:
    prefix: --partfunc
- id: in_me_a
  doc: '[=gamma]             Calculate an MEA (maximum expected accuracy)'
  type: boolean?
  inputBinding:
    prefix: --MEA
- id: in_mis
  doc: "Output \"most informative sequence\" instead of\nsimple consensus: For each\
    \ column of the\nalignment output the set of nucleotides with\nfrequence greater\
    \ than average in IUPAC\nnotation.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --mis
- id: in_stoch_bt
  doc: "Stochastic backtrack. Compute a certain number\nof random structures with\
    \ a probability\ndependend on the partition function. See -p\noption in RNAsubopt."
  type: long?
  inputBinding:
    prefix: --stochBT
- id: in_stoch_bt_en
  doc: "same as \"-s\" but also print out the energies\nand probabilities of the backtraced\n\
    structures."
  type: long?
  inputBinding:
    prefix: --stochBT_en
- id: in_circ
  doc: Assume a circular (instead of linear) RNA
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noClosingGU
- id: in_c_factor
  doc: "Set the weight of the covariance term in the\nenergy function\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --cfactor
- id: in_n_factor
  doc: "Set the penalty for non-compatible sequences in\nthe covariance term of the\
    \ energy function\n(default=`1.0')"
  type: double?
  inputBinding:
    prefix: --nfactor
- id: in_end_gaps
  doc: "Score pairs with endgaps same as gap-gap pairs.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --endgaps
- id: in_ribo_sum_file
  doc: "use specified Ribosum Matrix instead of normal\nenergy model. Matrixes to\
    \ use should be 6x6\nmatrices, the order of the terms is AU, CG,\nGC, GU, UA,\
    \ UG."
  type: File?
  inputBinding:
    prefix: --ribosum_file
- id: in_ribo_sum_scoring
  doc: "use ribosum scoring matrix. The matrix is\nchosen according to the minimal\
    \ and maximal\npairwise identities of the sequences in the\nfile.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --ribosum_scoring
- id: in_old
  doc: use old energy evaluation, treating gaps as
  type: boolean?
  inputBinding:
    prefix: --old
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_program
  doc: "-C, --constraint              Calculate structures subject to constraints.\n\
    The constraining structure will be read from\n'stdin', the alignment has to be\
    \ given as a\nfile name on the command line.\n(default=off)"
  type: string
  inputBinding:
    position: 0
- id: in_molecule_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
- id: in_characters_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RNAalifold
