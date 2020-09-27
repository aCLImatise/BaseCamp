class: CommandLineTool
id: RNALalifold.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_verbose
  doc: "Be verbose.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Be quiet.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_noconv
  doc: "Do not automatically substitute nucleotide\n\"T\" with \"U\"\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noconv
- id: in_input_format
  doc: "|S|F|M    File format of the input multiple sequence\nalignment (MSA)."
  type: File
  inputBinding:
    prefix: --input-format
- id: in_csv
  doc: "Create comma separated output (csv)\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --csv
- id: in_aln
  doc: "[=prefix]            Produce output alignments and secondary\nstructure plots\
    \ for each hit found."
  type: boolean
  inputBinding:
    prefix: --aln
- id: in_aln_eps
  doc: "[=prefix]        Produce colored and structure annotated\nsubalignment for\
    \ each hit"
  type: boolean
  inputBinding:
    prefix: --aln-EPS
- id: in_aln_eps_ss
  doc: "[=prefix]     Produce colored consensus secondary structure\nplots in PostScript\
    \ format"
  type: boolean
  inputBinding:
    prefix: --aln-EPS-ss
- id: in_aln_stk
  doc: '[=prefix]        Add hits to a multi-Stockholm formatted output'
  type: boolean
  inputBinding:
    prefix: --aln-stk
- id: in_auto_id
  doc: Automatically generate an ID for each
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`alignment')"
  type: File
  inputBinding:
    prefix: --id-prefix
- id: in_split_contributions
  doc: "Split the free energy contributions into\nseparate parts\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --split-contributions
- id: in_shape
  doc: ',file2       Use SHAPE reactivity data to guide structure'
  type: File
  inputBinding:
    prefix: --shape
- id: in_max_bp_span
  doc: "Set the maximum allowed separation of a base\npair to span. I.e. no pairs\
    \ (i,j) with\nj-i>span will be allowed.\n(default=`70')"
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: in_threshold
  doc: "Energy threshold in kcal/mol per nucleotide\nabove which secondary structure\
    \ hits are\nomitted in the output.\n(default=`-0.1')"
  type: double
  inputBinding:
    prefix: --threshold
- id: in_mis
  doc: "Output \"most informative sequence\" instead of\nsimple consensus: For each\
    \ column of the\nalignment output the set of nucleotides with\nfrequency greater\
    \ than average in IUPAC\nnotation.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --mis
- id: in_g_quad
  doc: "Incoorporate G-Quadruplex formation into the\nstructure prediction algorithm\n\
    (default=off)"
  type: boolean
  inputBinding:
    prefix: --gquad
- id: in_temp
  doc: "Rescale energy parameters to a temperature of\ntemp C. Default is 37C."
  type: long
  inputBinding:
    prefix: --temp
- id: in_no_tetra
  doc: "Do not include special tabulated stabilizing\nenergies for tri-, tetra- and\
    \ hexaloop\nhairpins. Mostly for testing.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noTetra
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for\nbases adjacent to helices in free\
    \ ends and\nmulti-loops\n(default=`2')"
  type: long
  inputBinding:
    prefix: --dangles
- id: in_no_lp
  doc: "Produce structures without lonely pairs\n(helices of length 1).\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noLP
- id: in_no_gu
  doc: "Do not allow GU pairs\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noGU
- id: in_no_closing_gu
  doc: "Do not allow GU pairs at the end of helices\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead\nof using the default parameter\
    \ set."
  type: File
  inputBinding:
    prefix: --paramFile
- id: in_c_factor
  doc: "Set the weight of the covariance term in the\nenergy function\n(default=`1.0')"
  type: double
  inputBinding:
    prefix: --cfactor
- id: in_n_factor
  doc: "Set the penalty for non-compatible sequences in\nthe covariance term of the\
    \ energy function\n(default=`1.0')"
  type: double
  inputBinding:
    prefix: --nfactor
- id: in_ribo_sum_file
  doc: "use specified Ribosum Matrix instead of normal\nenergy model. Matrixes to\
    \ use should be 6x6\nmatrices, the order of the terms is AU, CG,\nGC, GU, UA,\
    \ UG."
  type: File
  inputBinding:
    prefix: --ribosum_file
- id: in_ribo_sum_scoring
  doc: "use ribosum scoring matrix. The matrix is\nchosen according to the minimal\
    \ and maximal\npairwise identities of the sequences in the\nfile.\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --ribosum_scoring
- id: in_structures_dot
  doc: -h, --help                    Print help and exit
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: (default=`RNALalifold_results')
  type: File
  inputBinding:
    position: 0
- id: in_alignment_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 1
- id: in_predictions
  doc: --shapeMethod=D[mX][bY]   Specify the method how to convert SHAPE
  type: string
  inputBinding:
    position: 0
- id: in_contributions
  doc: (default=`D')
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names)\n(default=`alignment')"
  type: File
  outputBinding:
    glob: $(inputs.in_id_prefix)
cwlVersion: v1.1
baseCommand:
- RNALalifold
