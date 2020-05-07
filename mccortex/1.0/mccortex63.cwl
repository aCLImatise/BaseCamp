class: CommandLineTool
id: mccortex63.cwl
inputs:
- id: quiet
  doc: Silence status output normally printed to STDERR
  type: boolean
  inputBinding:
    prefix: --quiet
- id: force
  doc: Overwrite output files if they already exist
  type: boolean
  inputBinding:
    prefix: --force
- id: memory
  doc: 'Memory e.g. 1GB [default: 1GB]'
  type: string
  inputBinding:
    prefix: --memory
- id: nk_mers
  doc: 'Hash entries [default: 4M, ~4 million]'
  type: string
  inputBinding:
    prefix: --nkmers
- id: threads
  doc: 'Limit on proccessing threads [default: 2]'
  type: string
  inputBinding:
    prefix: --threads
- id: out
  doc: Output file
  type: File
  inputBinding:
    prefix: --out
- id: paths
  doc: Links file to load (can specify multiple times)
  type: string
  inputBinding:
    prefix: --paths
outputs: []
cwlVersion: v1.1
baseCommand:
- mccortex63
