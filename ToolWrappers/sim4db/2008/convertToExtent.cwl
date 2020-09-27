class: CommandLineTool
id: convertToExtent.cwl
inputs:
- id: in_be_chatty
  doc: be chatty
  type: boolean
  inputBinding:
    prefix: -v
- id: in_full_query
  doc: output the whole query def line
  type: boolean
  inputBinding:
    prefix: -fullquery
- id: in_full_genomic
  doc: output the whole genomic def line
  type: boolean
  inputBinding:
    prefix: -fullgenomic
- id: in_exons
  doc: include exons
  type: boolean
  inputBinding:
    prefix: -exons
- id: in_extended
  doc: include the IDX of each sequence
  type: boolean
  inputBinding:
    prefix: -extended
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertToExtent
