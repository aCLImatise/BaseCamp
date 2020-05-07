class: CommandLineTool
id: gem_indexer.cwl
inputs:
- id: bisulfite_index
  doc: (default=false)
  type: boolean
  inputBinding:
    prefix: --bisulfite-index
- id: threads
  doc: (default=#cores)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- gem-indexer
