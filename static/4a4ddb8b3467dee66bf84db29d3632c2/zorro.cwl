class: CommandLineTool
id: zorro.cwl
inputs:
- id: in_sample
  doc: ': Sampling pairs to calculate alignment reliabilty [Off By Default]'
  type: boolean?
  inputBinding:
    prefix: -sample
- id: in_no_sample
  doc: ': No Sampling i.e. using every pair to calculate alignment reliabilty [On
    By Default]'
  type: boolean?
  inputBinding:
    prefix: -nosample
- id: in_no_weighting
  doc: ': Using sum of pairs instead of weighted sum of pairs to calculate column
    confidence [Off By Default]'
  type: boolean?
  inputBinding:
    prefix: -noweighting
- id: in_ignore_gaps
  doc: ': Ignore pair-gaps in columns when calculating column confidences [Off By
    Default]'
  type: boolean?
  inputBinding:
    prefix: -ignoregaps
- id: in_n_sample
  doc: ': Tells ZORRO to sample #NUMBER pairs when sampling, automatically turns on
    -sample option [Samples 10*Nseq sequences By Default]'
  type: long?
  inputBinding:
    prefix: -Nsample
- id: in_tree_prog
  doc: ': Tells ZORRO to use PROGRAM instead of the default FastTree to create guide
    tree [FastTree By Default]'
  type: string?
  inputBinding:
    prefix: -treeprog
- id: in_guide
  doc: ': User provided guide tree'
  type: File?
  inputBinding:
    prefix: -guide
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- zorro
