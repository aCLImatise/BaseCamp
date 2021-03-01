class: CommandLineTool
id: AccessionToTaxId.cwl
inputs:
- id: in_accession
  doc: NCBI accession number, e.g NC_000913
  type: long?
  inputBinding:
    prefix: --accession
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- AccessionToTaxId
