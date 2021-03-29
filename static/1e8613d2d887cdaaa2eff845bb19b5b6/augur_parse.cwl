class: CommandLineTool
id: augur_parse.cwl
inputs:
- id: in_sequences
  doc: 'sequences in fasta or VCF format (default: None)'
  type: string?
  inputBinding:
    prefix: --sequences
- id: in_output_sequences
  doc: 'output sequences file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-sequences
- id: in_output_metadata
  doc: 'output metadata file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-metadata
- id: in_fields
  doc: 'fields in fasta header (default: None)'
  type: string[]
  inputBinding:
    prefix: --fields
- id: in_pret_tify_fields
  doc: "apply string prettifying operations (underscores to\nspaces, capitalization,\
    \ etc) to specified metadata\nfields (default: None)"
  type: string[]
  inputBinding:
    prefix: --prettify-fields
- id: in_separator
  doc: 'separator of fasta header (default: |)'
  type: string?
  inputBinding:
    prefix: --separator
- id: in_fix_dates
  doc: "attempt to parse non-standard dates and output them in\nstandard YYYY-MM-DD\
    \ format (default: None)\n"
  type: string?
  inputBinding:
    prefix: --fix-dates
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sequences
  doc: 'output sequences file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_sequences)
- id: out_output_metadata
  doc: 'output metadata file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_metadata)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.3.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- parse
