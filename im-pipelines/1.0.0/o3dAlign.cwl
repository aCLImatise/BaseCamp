class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o3dAlign.cwl
inputs:
- id: qmol_idx
  doc: Query molecule index in SD file if not the first
  type: string
  inputBinding:
    prefix: --qmolidx
- id: crippen
  doc: Use Crippen (logP) contributions
  type: boolean
  inputBinding:
    prefix: --crippen
- id: threshold
  doc: score cuttoff relative to alignment of query to itself
  type: string
  inputBinding:
    prefix: --threshold
- id: num
  doc: number of conformers to generate, if None then input structures are assumed
    to already be 3D
  type: string
  inputBinding:
    prefix: --num
- id: attempts
  doc: number of attempts to generate conformers
  type: string
  inputBinding:
    prefix: --attempts
- id: rmsd
  doc: prune RMSD threshold for excluding conformers
  type: string
  inputBinding:
    prefix: --rmsd
- id: emin
  doc: energy minimisation iterations for generated conformers (default of 0 means
    none)
  type: string
  inputBinding:
    prefix: --emin
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
- id: query
  doc: query molfile
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o3dAlign
