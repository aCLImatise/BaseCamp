class: CommandLineTool
id: dinamo.cwl
inputs:
- id: in_norc
  doc: ": When -p is not used, prevents dinamo to link motif to their reverse complement\n\
    (Please be warned : not linking the motif to their reverse complement usually\
    \ doubles memory usage)"
  type: boolean
  inputBinding:
    prefix: --norc
- id: in_no_log
  doc: ': Prevents the log ouput from being displayed'
  type: boolean
  inputBinding:
    prefix: --no-log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dinamo
