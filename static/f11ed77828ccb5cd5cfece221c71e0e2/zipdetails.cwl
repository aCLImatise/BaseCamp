class: CommandLineTool
id: zipdetails.cwl
inputs:
- id: in_verbose_output_stuff
  doc: Verbose - output more stuff
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- zipdetails
