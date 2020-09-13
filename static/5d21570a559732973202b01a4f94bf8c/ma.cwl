class: CommandLineTool
id: ../../../ma.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_regionstartregionend
  doc: <REGION_START:REGION_END>
  type: boolean
  inputBinding:
    prefix: -R
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: in_format_output_pipe
  doc: format 6 output -> don't pipe this output to file!
  type: File
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format_output_pipe
  doc: format 6 output -> don't pipe this output to file!
  type: File
  outputBinding:
    glob: $(inputs.in_format_output_pipe)
cwlVersion: v1.1
baseCommand:
- ma
