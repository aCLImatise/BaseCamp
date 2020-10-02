class: CommandLineTool
id: window_acgt.cwl
inputs:
- id: in__percentoutput_percentages
  doc: "or  --percent\nOutput percentages instead of counts\n"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_window_start
  doc: "window-len  A's C's G's T's #other %GC"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- window-acgt
