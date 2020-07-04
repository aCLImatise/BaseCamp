class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/conformers.cwl
inputs:
- id: num
  doc: number of conformers to generate
  type: string
  inputBinding:
    prefix: --num
- id: attempts
  doc: number of attempts
  type: string
  inputBinding:
    prefix: --attempts
- id: rmsd
  doc: prune RMSD threshold
  type: string
  inputBinding:
    prefix: --rmsd
- id: cluster
  doc: Cluster method (RMSD or TFD). If None then no clustering
  type: string
  inputBinding:
    prefix: --cluster
- id: threshold
  doc: cluster threshold (default of 2.0 for RMSD and 0.3 for TFD)
  type: string
  inputBinding:
    prefix: --threshold
- id: emin
  doc: energy minimisation iterations (default of 0 means none)
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
- id: smiles
  doc: input structure as smiles (incompatible with using files or stdin for input)
  type: string
  inputBinding:
    prefix: --smiles
outputs: []
cwlVersion: v1.1
baseCommand:
- conformers
