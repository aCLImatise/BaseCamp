class: CommandLineTool
id: RNAalifold.cwl
inputs:
- id: file_1aln
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: detailed_help
  doc: Print help, including all details and hidden  options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: constraint
  doc: Calculate structures subject to constraints. The constraining structure will
    be read from  'stdin', the alignment has to be given as a  file name on the command
    line. (default=off)
  type: boolean
  inputBinding:
    prefix: --constraint
- id: color
  doc: Produce a colored version of the consensus  strcture plot "alirna.ps" (default
    b&w  only) (default=off)
  type: boolean
  inputBinding:
    prefix: --color
- id: aln
  doc: Produce a colored and structure annotated  alignment in PostScript format in
    the file  "aln.ps" in the current directory. (default=off)
  type: boolean
  inputBinding:
    prefix: --aln
- id: nops
  doc: Do not produce postscript output (default=off)
  type: boolean
  inputBinding:
    prefix: --noPS
- id: part_func
  doc: "[=INT]          Calculate the partition function and base  pairing probability\
    \ matrix in addition to the  mfe structure. Default is calculation of mfe  structure\
    \ only. (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: me_a
  doc: "[=gamma]             Calculate an MEA (maximum expected accuracy)  structure.\
    \ (default=`1.')"
  type: boolean
  inputBinding:
    prefix: --MEA
- id: mis
  doc: 'Output "most informative sequence" instead of  simple consensus: For each
    column of the  alignment output the set of nucleotides with  frequence greater
    than average in IUPAC  notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
- id: stoch_bt
  doc: Stochastic backtrack. Compute a certain number  of random structures with a
    probability  dependend on the partition function. See -p  option in RNAsubopt.
  type: long
  inputBinding:
    prefix: --stochBT
- id: stoch_bt_en
  doc: same as "-s" but also print out the energies  and probabilities of the backtraced  structures.
  type: long
  inputBinding:
    prefix: --stochBT_en
- id: circ
  doc: Assume a circular (instead of linear) RNA  molecule. (default=off)
  type: boolean
  inputBinding:
    prefix: --circ
- id: dangles
  doc: How to treat "dangling end" energies for  bases adjacent to helices in free
    ends and  multi-loops (default=`2')
  type: long
  inputBinding:
    prefix: --dangles
- id: no_lp
  doc: Produce structures without lonely pairs  (helices of length 1). (default=off)
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
  doc: Set the weight of the covariance term in the  energy function (default=`1.0')
  type: string
  inputBinding:
    prefix: --cfactor
- id: n_factor
  doc: Set the penalty for non-compatible sequences in  the covariance term of the
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
  doc: use specified Ribosum Matrix instead of normal  energy model. Matrixes to use
    should be 6x6  matrices, the order of the terms is AU, CG,  GC, GU, UA, UG.
  type: string
  inputBinding:
    prefix: --ribosum_file
- id: ribo_sum_scoring
  doc: use ribosum scoring matrix. The matrix is  chosen according to the minimal
    and maximal  pairwise identities of the sequences in the  file. (default=off)
  type: boolean
  inputBinding:
    prefix: --ribosum_scoring
- id: old
  doc: use old energy evaluation, treating gaps as  characters. (default=off)
  type: boolean
  inputBinding:
    prefix: --old
- id: param_file
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAalifold
