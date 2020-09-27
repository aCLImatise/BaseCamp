class: CommandLineTool
id: nad.cwl
inputs:
- id: in_molecule
  doc: 'Molecule type to download. Default: nucleotide'
  type: string
  inputBinding:
    prefix: --molecule
- id: in_extended_validation
  doc: "Perform extended validation. Possible options are\n'none' to skip validation,\
    \ 'loads' to check if the\nsequence file loads in Biopython, or 'all' to run all\n\
    checks. Default: none"
  type: string
  inputBinding:
    prefix: --extended-validation
- id: in_format
  doc: "File format to download nucleotide sequences in.\nDefault: genbank"
  type: string
  inputBinding:
    prefix: --format
- id: in_out
  doc: Single filename to use for the combined output.
  type: File
  inputBinding:
    prefix: --out
- id: in_prefix
  doc: "Filename prefix to use for output files instead of\nusing the NCBI ID."
  type: File
  inputBinding:
    prefix: --prefix
- id: in_recursive
  doc: Recursively get all entries of a WGS entry.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_url
  doc: "Instead of downloading the sequences, just print the\nURLs to stdout."
  type: boolean
  inputBinding:
    prefix: --url
- id: in_verbose
  doc: Print a progress indicator.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_ncbi_accession
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Single filename to use for the combined output.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_prefix
  doc: "Filename prefix to use for output files instead of\nusing the NCBI ID."
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- nad
