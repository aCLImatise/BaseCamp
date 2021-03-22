class: CommandLineTool
id: augur_index.cwl
inputs:
- id: in_sequences
  doc: 'sequences in fasta format (default: None)'
  type: string?
  inputBinding:
    prefix: --sequences
- id: in_output
  doc: "tab-delimited file containing the number of bases per\nsequence in the given\
    \ file. Output columns include\nstrain, length, and counts for A, C, G, T, N,\
    \ other\nvalid IUPAC characters, ambiguous characters ('?' and\n'-'), and other\
    \ invalid characters. (default: None)"
  type: long?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'print index statistics to stdout (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.2.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- index
