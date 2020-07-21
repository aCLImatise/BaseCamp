class: CommandLineTool
id: ../../../Profile.cwl
inputs:
- id: filename_fasta_format
  doc: ': Filename = FASTA format'
  type: boolean
  inputBinding:
    prefix: -f
- id: filename_strict_phylip
  doc: ': Filename = Strict phylip file'
  type: boolean
  inputBinding:
    prefix: -s
- id: filename_relaxed_phylip
  doc: ': Filename = Relaxed phylip file'
  type: boolean
  inputBinding:
    prefix: -r
- id: alignmenttype_dao_aaa
  doc: ': AlignmentType = D|A|O where D=DNA A=AA and O=OTHER [default DNA]'
  type: boolean
  inputBinding:
    prefix: -t
- id: change_default_window
  doc: ': # = Change default window size for PHI [default w = 100]'
  type: boolean
  inputBinding:
    prefix: -w
- id: _verbose
  doc: ': Verbose [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -v
- id: change_scanning_size
  doc: ': # = Change scanning size for regions to test [default n = 1000]'
  type: boolean
  inputBinding:
    prefix: -n
- id: step_size_profile
  doc: ': # = Step size for profile method [default m = 25]'
  type: boolean
  inputBinding:
    prefix: -m
- id: phi
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Profile
