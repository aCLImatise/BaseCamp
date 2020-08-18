class: CommandLineTool
id: ../../../RNAeval.cwl
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
  doc: Print out energy contribution of each loop in the structure. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: jobs
  doc: "[=number]           Split batch input into jobs and start processing in parallel\
    \ using multiple threads. A value of 0 indicates to use as many parallel threads\
    \ as computation cores are available. (default=`0')"
  type: boolean
  inputBinding:
    prefix: --jobs
- id: in_file
  doc: Read a file instead of reading from stdin
  type: File
  inputBinding:
    prefix: --infile
- id: msa
  doc: Input is multiple sequence alignment in Stockholm 1.0 format (default=off)
  type: boolean
  inputBinding:
    prefix: --msa
- id: auto_id
  doc: Automatically generate an ID for each sequence. (default=off)
  type: boolean
  inputBinding:
    prefix: --auto-id
- id: id_prefix
  doc: Prefix for automatically generated IDs (as used in output file names) (default=`sequence')
  type: string
  inputBinding:
    prefix: --id-prefix
- id: id_delim
  doc: Change the delimiter between prefix and increasing number for automatically
    generated IDs (as used in output file names) (default=`_')
  type: string
  inputBinding:
    prefix: --id-delim
- id: shape_conversion
  doc: + [optional parameters]
  type: string
  inputBinding:
    prefix: --shapeConversion
- id: mis
  doc: 'Output "most informative sequence" instead of simple consensus: For each column
    of the alignment output the set of nucleotides with frequency greater than average
    in IUPAC notation. (default=off)'
  type: boolean
  inputBinding:
    prefix: --mis
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
- id: old
  doc: use old energy evaluation, treating gaps as characters. (default=off)
  type: boolean
  inputBinding:
    prefix: --old
- id: program
  doc: --noconv                  Do not automatically substitude nucleotide "T" with
    "U" (default=off)
  type: string
  inputBinding:
    position: 0
- id: contributions
  doc: (default=`D')
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAeval
