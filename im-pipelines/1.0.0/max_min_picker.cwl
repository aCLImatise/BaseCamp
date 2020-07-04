class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/max_min_picker.cwl
inputs:
- id: threshold
  doc: similarity threshold (1.0 means identical)
  type: string
  inputBinding:
    prefix: --threshold
- id: descriptor
  doc: descriptor or fingerprint type (default rdkit)
  type: string
  inputBinding:
    prefix: --descriptor
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
- id: num
  doc: maximum number to pick for diverse subset selection
  type: string
  inputBinding:
    prefix: --num
- id: seed_molecules
  doc: optional file containing any seed molecules that have already been picked
  type: string
  inputBinding:
    prefix: --seed-molecules
- id: fragment_method
  doc: Approach to find biggest fragment if more than one (hac = biggest by heavy
    atom count, mw = biggest by mol weight)
  type: string
  inputBinding:
    prefix: --fragment-method
- id: output_fragment
  doc: Output the biggest fragment rather than the original molecule
  type: boolean
  inputBinding:
    prefix: --output-fragment
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
- max_min_picker
