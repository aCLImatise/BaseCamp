class: CommandLineTool
id: bwa_sam_converter.pl.cwl
inputs:
- id: i
  doc: file with read mappings in sam format
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: collapsed read output file
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: mapping file in arf format
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: collapse sam file first and create correct mirdeep2 ids
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: tag for temporary directory
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: do not delete temporary directory
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa_sam_converter.pl
