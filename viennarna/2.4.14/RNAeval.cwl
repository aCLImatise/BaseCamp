#!/usr/bin/env cwl-runner

baseCommand:
- RNAeval
class: CommandLineTool
cwlVersion: v1.0
id: rnaeval
inputs:
- doc: --noconv                  Do not automatically substitude nucleotide "T" with
    "U" (default=off)
  id: program
  inputBinding:
    position: 0
  type: string
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
- doc: Print out energy contribution of each loop in the structure. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  id: jobs
  inputBinding:
    prefix: --jobs
  type: boolean
- doc: Read a file instead of reading from stdin
  id: in_file
  inputBinding:
    prefix: --infile
  type: File
- doc: Input is multiple sequence alignment in Stockholm 1.0 format (default=off)
  id: msa
  inputBinding:
    prefix: --msa
  type: boolean
- doc: Automatically generate an ID for each sequence. (default=off)
  id: auto_id
  inputBinding:
    prefix: --auto-id
  type: boolean
- doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  id: id_prefix
  inputBinding:
    prefix: --id-prefix
  type: string
- doc: Change the delimiter between prefix and increasing number for automatically
    generated IDs (as used in output file names) (default=`_')
  id: id_delim
  inputBinding:
    prefix: --id-delim
  type: string
- doc: How to treat "dangling end" energies for bases adjacent to helices in free
    ends and multi-loops (default=`2')
  id: dangles
  inputBinding:
    prefix: --dangles
  type: long
- doc: Rarely used option to fold sequences from the artificial ABCD... alphabet,
    where A pairs B, C-D etc.  Use the energy parameters for GC (-e 1) or AU (-e 2)
    pairs.
  id: energy_model
  inputBinding:
    prefix: --energyModel
  type: long
- doc: Read energy parameters from paramfile, instead of using the default parameter
    set.
  id: param_file
  inputBinding:
    prefix: --paramFile
  type: string
- doc: Assume a circular (instead of linear) RNA molecule. (default=off)
  id: circ
  inputBinding:
    prefix: --circ
  type: boolean
- doc: Incoorporate G-Quadruplex formation into the structure prediction algorithm
    (default=off)
  id: g_quad
  inputBinding:
    prefix: --gquad
  type: boolean
- doc: Recalculate energies of structures using a logarithmic energy function for
    multi-loops before output. (default=off)
  id: log_ml
  inputBinding:
    prefix: --logML
  type: boolean
- doc: file        Use SHAPE reactivity data in the folding recursions (does not work
    for PF yet)
  id: shape
  inputBinding:
    prefix: --shape
  type: string
- doc: =[D/Z/W] + [optional parameters] Specify the method how to convert SHAPE reactivity
    data to pseudo energy contributions (default=`D')
  id: shape_method
  inputBinding:
    prefix: --shapeMethod
  type: boolean
- doc: /C/S/L/O  + [optional parameters] Specify the method used to convert SHAPE
    reactivities to pairing probabilities when using the SHAPE approach of Zarringhalam
    et al. (default=`O')
  id: shape_conversion
  inputBinding:
    prefix: --shapeConversion
  type: string
- doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  id: mis
  inputBinding:
    prefix: --mis
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
