class: CommandLineTool
id: canu_time.cwl
inputs:
- id: in_zero_dot_zero_zero
  doc: 0.00      0.00     0.000     0.000 -2777777.78   Sat Nov 20 17:46:39 2286   Thu
    Jan  1 00:00:00 1970
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- canu-time
