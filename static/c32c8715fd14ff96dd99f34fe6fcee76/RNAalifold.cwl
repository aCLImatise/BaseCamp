class: CommandLineTool
id: RNAalifold.cwl
inputs:
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
- id: jobs
  doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  type: boolean
  inputBinding:
    prefix: --jobs
- id: noconv
  doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  type: boolean
  inputBinding:
    prefix: --noconv
- id: color
  doc: Produce a colored version of the consensus structure plot "alirna.ps" (default
    b&w only) (default=off)
  type: boolean
  inputBinding:
    prefix: --color
- id: aln
  doc: Produce a colored and structure annotated alignment in PostScript format in
    the file "aln.ps" in the current directory. (default=off)
  type: boolean
  inputBinding:
    prefix: --aln
- id: aln_stk
  doc: "[=prefix]        Create a multi-Stockholm formatted output file. (default=`RNAalifold_results')"
  type: boolean
  inputBinding:
    prefix: --aln-stk
- id: nops
  doc: Do not produce postscript drawing of the mfe structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --noPS
- id: no_dp
  doc: Do not produce dot-plot postscript file containing base pair or stack probabilitities.
    (default=off)
  type: boolean
  inputBinding:
    prefix: --noDP
- id: input_format
  doc: '|S|F|M    File format of the input multiple sequence alignment (MSA).'
  type: string
  inputBinding:
    prefix: --input-format
- id: continuous_ids
  doc: Use continuous alignment ID numbering when no alignment ID can be retrieved
    from input data. (default=off)
  type: boolean
  inputBinding:
    prefix: --continuous-ids
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
- id: max_bp_span
  doc: Set the maximum base pair span (default=`-1')
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: constraint
  doc: "[=<filename>] Calculate structures subject to constraints. The constraining\
    \ structure will be read from 'stdin', the alignment has to be given as a file\
    \ name on the command line. (default=`')"
  type: boolean
  inputBinding:
    prefix: --constraint
- id: batch
  doc: Use constraints for all alignment records. (default=off)
  type: boolean
  inputBinding:
    prefix: --batch
- id: enforce_constraint
  doc: Enforce base pairs given by round brackets ( ) in structure constraint (default=off)
  type: boolean
  inputBinding:
    prefix: --enforceConstraint
- id: ss_cons
  doc: Use consensus structures from Stockholm file (#=GF SS_cons) as constraint (default=off)
  type: boolean
  inputBinding:
    prefix: --SS_cons
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
- id: part_func
  doc: "[=INT]          Calculate the partition function and base pairing probability\
    \ matrix in addition to the mfe structure. Default is calculation of mfe structure\
    \ only. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure,\
    \ where the expected accuracy is computed from the pair probabilities: each base\
    \ pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given\
    \ by the probability of not forming a pair. (default=`1.')"
  type: boolean
  inputBinding:
    prefix: --MEA
- id: mis
  doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
- id: stoch_bt
  doc: Stochastic backtrack. Compute a certain number of random structures with a
    probability dependend on the partition function. See -p option in RNAsubopt.
  type: long
  inputBinding:
    prefix: --stochBT
- id: stoch_bt_en
  doc: same as "-s" but also print out the energies and probabilities of the backtraced
    structures.
  type: long
  inputBinding:
    prefix: --stochBT_en
- id: nonredundant
  doc: Enable non-redundant sampling strategy. (default=off)
  type: boolean
  inputBinding:
    prefix: --nonRedundant
- id: circ
  doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: g_quad
  doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
  type: boolean
  inputBinding:
    prefix: --gquad
- id: sci
  doc: Compute the structure conservation index (SCI) for the MFE consensus structure
    of the alignment (default=off)
  type: boolean
  inputBinding:
    prefix: --sci
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
- id: end_gaps
  doc: Score pairs with endgaps same as gap-gap pairs. (default=off)
  type: boolean
  inputBinding:
    prefix: --endgaps
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
- id: old
  doc: use old energy evaluation, treating gaps as characters. (default=off)
  type: boolean
  inputBinding:
    prefix: --old
- id: param_file
  doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAalifold
