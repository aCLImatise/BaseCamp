class: CommandLineTool
id: qcli_make_script.cwl
inputs:
- id: output_fp
  doc: The output filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- qcli_make_script
