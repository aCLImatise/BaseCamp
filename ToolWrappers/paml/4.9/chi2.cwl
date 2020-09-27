class: CommandLineTool
id: chi2.cwl
inputs:
- id: in_eight_four
  doc: 54.3677  60.5398  67.8761  83.3343 100.9800 106.3948 117.0565 129.8037
  type: long
  inputBinding:
    position: 0
- id: in_eight_five
  doc: 55.1696  61.3888  68.7772  84.3343 102.0789 107.5217 118.2357 131.0412
  type: long
  inputBinding:
    position: 1
- id: in_eight_eight
  doc: 57.5823  63.9409  71.4838  87.3342 105.3722 110.8980 121.7671 134.7455
  type: long
  inputBinding:
    position: 2
- id: in_eight_nine
  doc: 58.3888  64.7934  72.3872  88.3342 106.4689 112.0220 122.9422 135.9776
  type: long
  inputBinding:
    position: 3
- id: in_nine_five
  doc: 63.2496  69.9249  77.8184  94.3342 113.0377 118.7516 129.9727 143.3435
  type: long
  inputBinding:
    position: 0
- id: in_nine_eight
  doc: 65.6936  72.5009  80.5408  97.3341 116.3153 122.1077 133.4757 147.0104
  type: long
  inputBinding:
    position: 1
- id: in_nine_nine
  doc: 66.5101  73.3611  81.4493  98.3341 117.4069 123.2252 134.6416 148.2304
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chi2
