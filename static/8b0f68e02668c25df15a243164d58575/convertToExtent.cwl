class: CommandLineTool
id: convertToExtent.cwl
inputs:
- id: v
  doc: be chatty
  type: boolean
  inputBinding:
    prefix: -v
- id: full_query
  doc: output the whole query def line
  type: boolean
  inputBinding:
    prefix: -fullquery
- id: full_genomic
  doc: output the whole genomic def line
  type: boolean
  inputBinding:
    prefix: -fullgenomic
- id: exons
  doc: include exons
  type: boolean
  inputBinding:
    prefix: -exons
- id: extended
  doc: include the IDX of each sequence
  type: boolean
  inputBinding:
    prefix: -extended
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToExtent
