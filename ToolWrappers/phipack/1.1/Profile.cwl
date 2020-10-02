class: CommandLineTool
id: Profile.cwl
inputs:
- id: in_filename_fasta_format
  doc: ': Filename = FASTA format'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_filename_strict_file
  doc: ': Filename = Strict phylip file'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_filename_relaxed_file
  doc: ': Filename = Relaxed phylip file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_alignmenttype_dao_ddnaaaa
  doc: ": AlignmentType = D|A|O where D=DNA\nA=AA and O=OTHER [default DNA]"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_change_default_window
  doc: ': # = Change default window size for PHI [default w = 100]'
  type: boolean
  inputBinding:
    prefix: -w
- id: in__verbose
  doc: ': Verbose [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_change_scanning_size
  doc: ': # = Change scanning size for regions to test [default n = 1000]'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_step_size_profile
  doc: ': # = Step size for profile method [default m = 25]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_phi
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Profile
