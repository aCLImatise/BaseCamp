class: CommandLineTool
id: ktGetLCA.cwl
inputs:
- id: s
  doc: Streaming mode. Each line is expected to be a whitespace-separated list  of
    inputs for a single lowest common ancestor computation. Taxonomy will be preloaded,
    allowing for faster computation after a small upfront time.
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- ktGetLCA
