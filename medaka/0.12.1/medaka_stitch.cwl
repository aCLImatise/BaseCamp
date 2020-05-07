class: CommandLineTool
id: medaka_stitch.cwl
inputs:
- id: inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output .fasta.
  type: string
  inputBinding:
    position: 1
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: regions
  doc: 'Limit stitching to these reference names (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: jobs
  doc: 'Number of worker processes to use. (default: 1)'
  type: string
  inputBinding:
    prefix: --jobs
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- stitch
