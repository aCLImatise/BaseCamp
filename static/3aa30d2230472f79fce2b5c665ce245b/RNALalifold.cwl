class: CommandLineTool
id: RNALalifold.cwl
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
- id: span
  doc: Set the maximum allowed separation of a base  pair to span. I.e. no pairs (i,j)
    with  j-i>span will be allowed. (default=`70')
  type: long
  inputBinding:
    prefix: --span
- id: csv
  doc: Create comma seperated output (csv) (default=off)
  type: boolean
  inputBinding:
    prefix: --csv
- id: part_func
  doc: "[=INT]          Calculate the partition function and base  pairing probability\
    \ matrix in addition to the  mfe structure.  (default=`1')"
  type: boolean
  inputBinding:
    prefix: --partfunc
- id: cut_off
  doc: Report only base pairs with an average  probability > cutoff in the dot plot
    (default=`0.01')
  type: double
  inputBinding:
    prefix: --cutoff
- id: mis
  doc: 'Output "most informative sequence" instead of  simple consensus: For each
    column of the  alignment output the set of nucleotides with  frequence greater
    than average in IUPAC  notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
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
- id: param_file
  doc: Read energy parameters from paramfile, instead  of using the default parameter
    set.
  type: string
  inputBinding:
    prefix: --paramFile
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
outputs: []
cwlVersion: v1.1
baseCommand:
- RNALalifold
