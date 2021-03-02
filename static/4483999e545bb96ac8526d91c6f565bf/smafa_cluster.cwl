class: CommandLineTool
id: smafa_cluster.cwl
inputs:
- id: in_amino_acid
  doc: 'Sequences are amino acid [default: nucleotide]'
  type: boolean?
  inputBinding:
    prefix: --amino-acid
- id: in_fragment_method
  doc: Use the 'fragment' method for clustering
  type: boolean?
  inputBinding:
    prefix: --fragment-method
- id: in_quiet
  doc: Unless there is an error, do not print logging information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Print extra debug logging information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_divergence
  doc: 'Maximum number of mismatches in reported hits [default: 5]'
  type: long?
  inputBinding:
    prefix: --divergence
- id: in_km_er_length
  doc: Length of kmer to query with [default 5]
  type: long?
  inputBinding:
    prefix: --kmer-length
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smafa
- cluster
