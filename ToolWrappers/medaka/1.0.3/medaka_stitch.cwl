class: CommandLineTool
id: medaka_stitch.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Limit stitching to these reference names (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_jobs
  doc: 'Number of worker processes to use. (default: 1)'
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output .fasta.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medaka
- stitch
