class: CommandLineTool
id: translate_gard.cwl
inputs:
- id: in_input_filename_cdnexgardcsv
  doc: input filename (like CD2.nex.GARD.csv)  [required]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_json_filename_cdnexoutjson
  doc: json filename (like CD2.nex.out.json    [required]
  type: File?
  inputBinding:
    prefix: -j
- id: in_output_filename_
  doc: output filename                         [required]
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_json_filename_cdnexoutjson
  doc: json filename (like CD2.nex.out.json    [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_json_filename_cdnexoutjson)
- id: out_output_filename_
  doc: output filename                         [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_)
hints: []
cwlVersion: v1.1
baseCommand:
- translate-gard
