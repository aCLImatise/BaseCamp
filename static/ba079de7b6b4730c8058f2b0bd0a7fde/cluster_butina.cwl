class: CommandLineTool
id: ../../../cluster_butina.cwl
inputs:
- id: threshold
  doc: similarity clustering threshold (1.0 means identical)
  type: string
  inputBinding:
    prefix: --threshold
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
- id: num
  doc: maximum number to pick for diverse subset selection
  type: string
  inputBinding:
    prefix: --num
- id: exclude
  doc: threshold for excluding structures in diverse subset selection (1.0 means identical)
  type: string
  inputBinding:
    prefix: --exclude
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
- id: field
  doc: field to use to optimise diverse subset selection
  type: string
  inputBinding:
    prefix: --field
- id: min
  doc: pick lowest value specified by the --field option
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: pick highest value specified by the --field option
  type: boolean
  inputBinding:
    prefix: --max
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
- cluster_butina
