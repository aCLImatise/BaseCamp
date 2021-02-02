class: CommandLineTool
id: ma.cwl
inputs:
- id: in_r_regionstartregionendi_id
  doc: "-R <REGION_START:REGION_END>\n-I <ID to assign to assembly sequence>"
  type: string
  inputBinding:
    prefix: -c
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
