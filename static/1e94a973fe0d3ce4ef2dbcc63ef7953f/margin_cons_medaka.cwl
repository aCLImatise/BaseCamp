class: CommandLineTool
id: margin_cons_medaka.cwl
inputs:
- id: depth
  doc: minimum depth to call a variant
  type: string
  inputBinding:
    prefix: --depth
- id: quality
  doc: minimum quality to call a variant
  type: string
  inputBinding:
    prefix: --quality
- id: masked
  doc: Regions to mask (contig:start-end,contig:start-end)
  type: string
  inputBinding:
    prefix: --masked
outputs: []
cwlVersion: v1.1
baseCommand:
- margin_cons_medaka
