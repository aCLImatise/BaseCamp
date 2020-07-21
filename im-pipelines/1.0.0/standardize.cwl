class: CommandLineTool
id: ../../../standardize.cwl
inputs:
- id: fragment_method
  doc: Approach to find biggest fragment if more than one (hac = biggest by heavy
    atom count, mw = biggest by mol weight)
  type: string
  inputBinding:
    prefix: --fragment-method
- id: neutralize
  doc: Neutralize the molecule
  type: boolean
  inputBinding:
    prefix: --neutralize
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
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
- id: thin
  doc: Thin output mode
  type: boolean
  inputBinding:
    prefix: --thin
outputs: []
cwlVersion: v1.1
baseCommand:
- standardize
