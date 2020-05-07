class: CommandLineTool
id: qcli_make_rst.cwl
inputs:
- id: input_fps
  doc: the input file(s) to generate rst files for [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fps
- id: output_dir
  doc: the directory where the resulting rst file(s) should be written [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- qcli_make_rst
