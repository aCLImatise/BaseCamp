class: CommandLineTool
id: Profile.cwl
inputs:
- id: f
  doc: ': Filename = FASTA format'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: ': Filename = Strict phylip file'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: ': Filename = Relaxed phylip file'
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: ': AlignmentType = D|A|O where D=DNA A=AA and O=OTHER [default DNA]'
  type: boolean
  inputBinding:
    prefix: -t
- id: w
  doc: ': # = Change default window size for PHI [default w = 100]'
  type: boolean
  inputBinding:
    prefix: -w
- id: v
  doc: ': Verbose [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -v
- id: n
  doc: ': # = Change scanning size for regions to test [default n = 1000]'
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: ': # = Step size for profile method [default m = 25]'
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- Profile
