class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bl_interleave.cwl
inputs:
- id: specify_multiple_files
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_output_file
  doc: specify the OUTPUT file
  type: boolean
  inputBinding:
    prefix: -o
- id: reformat_paired_read
  doc: reformat paired read ID lines by replacing everything after the first space,
    tab or / with the specified SEP followed by the input file number (e.g. '/' will
    use /1 as the ID suffix for the first input file, etc.)
  type: boolean
  inputBinding:
    prefix: -s
- id: interleave
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-interleave
