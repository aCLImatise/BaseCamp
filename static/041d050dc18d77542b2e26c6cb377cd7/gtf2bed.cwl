class: CommandLineTool
id: gtf2bed.pl.cwl
inputs:
- id: chr16
  doc: 100471  160062  jg7.t1  0       -       101158  160062  0,0,255 10      814,168,108,231,171,530,138,97,141,878  100471,102476,104226,106524,110092,110758,117340,123009,127579,159184
  type: string
  inputBinding:
    position: 0
- id: item_rgb
  doc: a string s encoding the RGB value of the form R,G,B (default 0,0,225).
  type: string
  inputBinding:
    prefix: --itemRgb
- id: include_stop_in_cds
  doc: include stop codon into the coding sequence (default off)
  type: boolean
  inputBinding:
    prefix: --includeStopInCDS
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf2bed.pl
