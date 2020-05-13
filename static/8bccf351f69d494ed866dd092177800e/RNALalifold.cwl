class: CommandLineTool
id: RNALalifold.cwl
inputs:
- id: file_1aln
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: verbose
  doc: Be verbose. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Be quiet. (default=off)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: noconv
  doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: input_format
  doc: '|S|F|M    File format of the input multiple sequence alignment (MSA).'
  type: string
  inputBinding:
    prefix: --input-format
- id: csv
  doc: Create comma separated output (csv) (default=off)
  type: boolean
  inputBinding:
    prefix: --csv
- id: aln
  doc: '[=prefix]            Produce output alignments and secondary structure plots
    for each hit found.'
  type: boolean
  inputBinding:
    prefix: --aln
- id: aln_eps
  doc: '[=prefix]        Produce colored and structure annotated subalignment for
    each hit'
  type: boolean
  inputBinding:
    prefix: --aln-EPS
- id: aln_eps_ss
  doc: '[=prefix]     Produce colored consensus secondary structure plots in PostScript
    format'
  type: boolean
  inputBinding:
    prefix: --aln-EPS-ss
- id: aln_stk
  doc: "[=prefix]        Add hits to a multi-Stockholm formatted output file. (default=`RNALalifold_results')"
  type: boolean
  inputBinding:
    prefix: --aln-stk
- id: auto_id
  doc: Automatically generate an ID for each alignment. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`alignment')
  type: string
  inputBinding:
    prefix: --id-prefix
- id: split_contributions
  doc: Split the free energy contributions into separate parts (default=off)
  type: boolean
  inputBinding:
    prefix: --split-contributions
- id: shape
  doc: ',file2       Use SHAPE reactivity data to guide structure predictions'
  type: File
  inputBinding:
    prefix: --shape
- id: shape_method
  doc: "[mX][bY]   Specify the method how to convert SHAPE reactivity data to pseudo\
    \ energy contributions (default=`D')"
  type: string
  inputBinding:
    prefix: --shapeMethod
- id: max_bp_span
  doc: Set the maximum allowed separation of a base pair to span. I.e. no pairs (i,j)
    with j-i>span will be allowed. (default=`70')
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: threshold
  doc: Energy threshold in kcal/mol per nucleotide above which secondary structure
    hits are omitted in the output. (default=`-0.1')
  type: string
  inputBinding:
    prefix: --threshold
- id: mis
  doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (default=off)
  type: boolean
  inputBinding:
    prefix: --gquad
- id: dangles
  doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: no_gu
  doc: Do not allow GU pairs (default=off)
  type: boolean
  inputBinding:
    prefix: --noGU
- id: no_closing_gu
  doc: Do not allow GU pairs at the end of helices (default=off)
  type: boolean
  inputBinding:
    prefix: --noClosingGU
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
- id: c_factor
  doc: Set the weight of the covariance term in the energy function (default=`1.0')
  type: string
  inputBinding:
    prefix: --cfactor
- id: n_factor
  doc: Set the penalty for non-compatible sequences in the covariance term of the
    energy function (default=`1.0')
  type: string
  inputBinding:
    prefix: --nfactor
- id: ribo_sum_file
  doc: use specified Ribosum Matrix instead of normal energy model. Matrixes to use
    should be 6x6 matrices, the order of the terms is AU, CG, GC, GU, UA, UG.
  type: string
  inputBinding:
    prefix: --ribosum_file
- id: ribo_sum_scoring
  doc: use ribosum scoring matrix. The matrix is chosen according to the minimal and
    maximal pairwise identities of the sequences in the file. (default=off)
  type: boolean
  inputBinding:
    prefix: --ribosum_scoring
outputs: []
cwlVersion: v1.1
baseCommand:
- RNALalifold
