class: CommandLineTool
id: ../../../screen.cwl
inputs:
- id: q_smiles
  doc: query structure as smiles (incompatible with -qmolfile arg)
  type: string
  inputBinding:
    prefix: --qsmiles
- id: q_molfile
  doc: query structure as filename in molfile format (incompatible with -qsmiles arg)
  type: string
  inputBinding:
    prefix: --qmolfile
- id: simm_in
  doc: similarity lower cutoff (1.0 means identical)
  type: string
  inputBinding:
    prefix: --simmin
- id: sim_max
  doc: similarity upper cutoff (1.0 means identical)
  type: string
  inputBinding:
    prefix: --simmax
- id: descriptor
  doc: descriptor or fingerprint type (default rdkit)
  type: string
  inputBinding:
    prefix: --descriptor
- id: metric
  doc: similarity metric (default tanimoto)
  type: string
  inputBinding:
    prefix: --metric
- id: fragment
  doc: Find single fragment if more than one (hac = biggest by heavy atom count, mw
    = biggest by mol weight )
  type: string
  inputBinding:
    prefix: --fragment
- id: hac_min
  doc: Min heavy atom count
  type: string
  inputBinding:
    prefix: --hacmin
- id: hac_max
  doc: Max heavy atom count
  type: string
  inputBinding:
    prefix: --hacmax
- id: mwm_in
  doc: Min mol weight
  type: string
  inputBinding:
    prefix: --mwmin
- id: mw_max
  doc: Max mol weight
  type: string
  inputBinding:
    prefix: --mwmax
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
- id: thin
  doc: Thin output mode
  type: boolean
  inputBinding:
    prefix: --thin
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- screen
