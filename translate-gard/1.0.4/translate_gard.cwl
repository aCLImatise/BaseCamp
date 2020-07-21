class: CommandLineTool
id: ../../../translate_gard.cwl
inputs:
- id: input_filename_cdnexgardcsv
  doc: input filename (like CD2.nex.GARD.csv)  [required]
  type: boolean
  inputBinding:
    prefix: -i
- id: json_filename_cdnexoutjson
  doc: json filename (like CD2.nex.out.json    [required]
  type: boolean
  inputBinding:
    prefix: -j
- id: output_filename_
  doc: output filename                         [required]
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- translate-gard
