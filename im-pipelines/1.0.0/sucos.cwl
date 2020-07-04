class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sucos.cwl
inputs:
- id: target
  doc: molecule to compare against
  type: string
  inputBinding:
    prefix: --target
- id: target_idx
  doc: Target molecule index in SD file if not the first
  type: string
  inputBinding:
    prefix: --targetidx
- id: input
  doc: Input file, if not defined the STDIN is used
  type: string
  inputBinding:
    prefix: --input
- id: in_format
  doc: Input format. When using STDIN this must be specified.
  type: string
  inputBinding:
    prefix: --informat
- id: output
  doc: Base name for output file (no extension). If not defined then SDTOUT is used
    for the structures and output is used as base name of the other files.
  type: string
  inputBinding:
    prefix: --output
- id: out_format
  doc: Output format. Defaults to 'sdf'.
  type: string
  inputBinding:
    prefix: --outformat
- id: meta
  doc: Write metadata and metrics files
  type: boolean
  inputBinding:
    prefix: --meta
outputs: []
cwlVersion: v1.1
baseCommand:
- sucos
