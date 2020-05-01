#!/usr/bin/env cwl-runner

baseCommand:
- RNAalifold
class: CommandLineTool
cwlVersion: v1.0
id: rnaalifold
inputs:
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
- doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  id: jobs
  inputBinding:
    prefix: --jobs
  type: boolean
- doc: Do not automatically substitute nucleotide "T" with "U" (default=off)
  id: noconv
  inputBinding:
    prefix: --noconv
  type: boolean
- doc: Produce a colored version of the consensus structure plot "alirna.ps" (default
    b&w only) (default=off)
  id: color
  inputBinding:
    prefix: --color
  type: boolean
- doc: Produce a colored and structure annotated alignment in PostScript format in
    the file "aln.ps" in the current directory. (default=off)
  id: aln
  inputBinding:
    prefix: --aln
  type: boolean
- doc: "[=prefix]        Create a multi-Stockholm formatted output file. (default=`RNAalifold_results')"
  id: aln_stk
  inputBinding:
    prefix: --aln-stk
  type: boolean
- doc: Do not produce postscript drawing of the mfe structure. (default=off)
  id: nops
  inputBinding:
    prefix: --noPS
  type: boolean
- doc: Do not produce dot-plot postscript file containing base pair or stack probabilitities.
    (default=off)
  id: no_dp
  inputBinding:
    prefix: --noDP
  type: boolean
- doc: '|S|F|M    File format of the input multiple sequence alignment (MSA).'
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Use continuous alignment ID numbering when no alignment ID can be retrieved
    from input data. (default=off)
  id: continuous_ids
  inputBinding:
    prefix: --continuous-ids
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
- doc: Set the maximum base pair span (default=`-1')
  id: max_bp_span
  inputBinding:
    prefix: --maxBPspan
  type: long
- doc: "[=<filename>] Calculate structures subject to constraints. The constraining\
    \ structure will be read from 'stdin', the alignment has to be given as a file\
    \ name on the command line. (default=`')"
  id: constraint
  inputBinding:
    prefix: --constraint
  type: boolean
- doc: Use constraints for all alignment records. (default=off)
  id: batch
  inputBinding:
    prefix: --batch
  type: boolean
- doc: Enforce base pairs given by round brackets ( ) in structure constraint (default=off)
  id: enforce_constraint
  inputBinding:
    prefix: --enforceConstraint
  type: boolean
- doc: Use consensus structures from Stockholm file (#=GF SS_cons) as constraint (default=off)
  id: ss_cons
  inputBinding:
    prefix: --SS_cons
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
- doc: "[=INT]          Calculate the partition function and base pairing probability\
    \ matrix in addition to the mfe structure. Default is calculation of mfe structure\
    \ only. (default=`1')"
  id: part_func
  inputBinding:
    prefix: --partfunc
  type: boolean
- doc: "[=gamma]             Calculate an MEA (maximum expected accuracy) structure,\
    \ where the expected accuracy is computed from the pair probabilities: each base\
    \ pair (i,j) gets a score 2*gamma*p_ij and the score of an unpaired base is given\
    \ by the probability of not forming a pair. (default=`1.')"
  id: me_a
  inputBinding:
    prefix: --MEA
  type: boolean
- doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  id: mis
  inputBinding:
    prefix: --mis
  type: boolean
- doc: Stochastic backtrack. Compute a certain number of random structures with a
    probability dependend on the partition function. See -p option in RNAsubopt.
  id: stoch_bt
  inputBinding:
    prefix: --stochBT
  type: long
- doc: same as "-s" but also print out the energies and probabilities of the backtraced
    structures.
  id: stoch_bt_en
  inputBinding:
    prefix: --stochBT_en
  type: long
- doc: Enable non-redundant sampling strategy. (default=off)
  id: nonredundant
  inputBinding:
    prefix: --nonRedundant
  type: boolean
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm.
    (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
  type: boolean
- doc: Compute the structure conservation index (SCI) for the MFE consensus structure
    of the alignment (default=off)
  id: sci
  inputBinding:
    prefix: --sci
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
- doc: Score pairs with endgaps same as gap-gap pairs. (default=off)
  id: end_gaps
  inputBinding:
    prefix: --endgaps
  type: boolean
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
- doc: use old energy evaluation, treating gaps as characters. (default=off)
  id: old
  inputBinding:
    prefix: --old
  type: boolean
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
