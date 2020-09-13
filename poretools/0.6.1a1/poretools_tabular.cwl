class: CommandLineTool
id: ../../../poretools_tabular.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_type
  doc: Which type of FASTA entries should be reported? Def.=all
  type: string
  inputBinding:
    prefix: --type
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- tabular
