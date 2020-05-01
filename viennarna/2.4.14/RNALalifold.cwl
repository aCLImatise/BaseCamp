#!/usr/bin/env cwl-runner

baseCommand:
- RNALalifold
class: CommandLineTool
cwlVersion: v1.0
id: rnalalifold
inputs:
- doc: ''
  id: file_1aln
  inputBinding:
    position: 0
  type: File
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Be verbose. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Be quiet. (default=off)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: '|S|F|M    File format of the input multiple sequence alignment (MSA).'
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Create comma separated output (csv) (default=off)
  id: csv
  inputBinding:
    prefix: --csv
  type: boolean
- doc: '[=prefix]            Produce output alignments and secondary structure plots
    for each hit found.'
  id: aln
  inputBinding:
    prefix: --aln
  type: boolean
- doc: '[=prefix]        Produce colored and structure annotated subalignment for
    each hit'
  id: aln_eps
  inputBinding:
    prefix: --aln-EPS
  type: boolean
- doc: '[=prefix]     Produce colored consensus secondary structure plots in PostScript
    format'
  id: aln_eps_ss
  inputBinding:
    prefix: --aln-EPS-ss
  type: boolean
- doc: "[=prefix]        Add hits to a multi-Stockholm formatted output file. (default=`RNALalifold_results')"
  id: aln_stk
  inputBinding:
    prefix: --aln-stk
  type: boolean
- doc: Automatically generate an ID for each alignment. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: Prefix for automatically generated IDs (as used in output file names) (default=`alignment')
  id: id_prefix
  inputBinding:
    prefix: --id-prefix
  type: string
- doc: Split the free energy contributions into separate parts (default=off)
  id: split_contributions
  inputBinding:
    prefix: --split-contributions
  type: boolean
- doc: ',file2       Use SHAPE reactivity data to guide structure predictions'
  id: shape
  inputBinding:
    prefix: --shape
  type: File
- doc: "[mX][bY]   Specify the method how to convert SHAPE reactivity data to pseudo\
    \ energy contributions (default=`D')"
  id: shape_method
  inputBinding:
    prefix: --shapeMethod
  type: string
- doc: Set the maximum allowed separation of a base pair to span. I.e. no pairs (i,j)
    with j-i>span will be allowed. (default=`70')
  id: max_bp_span
  inputBinding:
    prefix: --maxBPspan
  type: long
- doc: Energy threshold in kcal/mol per nucleotide above which secondary structure
    hits are omitted in the output. (default=`-0.1')
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  id: mis
  inputBinding:
    prefix: --mis
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
  type: boolean
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Produce structures without lonely pairs (helices of length 1). (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: Do not allow GU pairs (default=off)
  id: no_gu
  inputBinding:
    prefix: --noGU
  type: boolean
- doc: Do not allow GU pairs at the end of helices (default=off)
  id: no_closing_gu
  inputBinding:
    prefix: --noClosingGU
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Set the weight of the covariance term in the energy function (default=`1.0')
  id: c_factor
  inputBinding:
    prefix: --cfactor
  type: string
- doc: Set the penalty for non-compatible sequences in the covariance term of the
    energy function (default=`1.0')
  id: n_factor
  inputBinding:
    prefix: --nfactor
  type: string
- doc: use specified Ribosum Matrix instead of normal energy model. Matrixes to use
    should be 6x6 matrices, the order of the terms is AU, CG, GC, GU, UA, UG.
  id: ribo_sum_file
  inputBinding:
    prefix: --ribosum_file
  type: string
- doc: use ribosum scoring matrix. The matrix is chosen according to the minimal and
    maximal pairwise identities of the sequences in the file. (default=off)
  id: ribo_sum_scoring
  inputBinding:
    prefix: --ribosum_scoring
  type: boolean
