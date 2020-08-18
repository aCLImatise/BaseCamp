class: CommandLineTool
id: ../../../smog2016.cwl
inputs:
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
- id: no_gzip
  doc: Do not compress the output (STDOUT is never compressed
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: pdb_file
  doc: PDB file for scoring
  type: string
  inputBinding:
    prefix: --pdb_file
- id: threshold
  doc: The maximum score to allow
  type: string
  inputBinding:
    prefix: --threshold
- id: threads
  doc: Number of threads to used. Default is the number of cores
  type: string
  inputBinding:
    prefix: --threads
- id: thin
  doc: Thin output mode
  type: boolean
  inputBinding:
    prefix: --thin
outputs: []
cwlVersion: v1.1
baseCommand:
- smog2016
