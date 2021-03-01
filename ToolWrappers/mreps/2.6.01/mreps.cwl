class: CommandLineTool
id: mreps.cwl
inputs:
- id: in_specifies_sequence_command
  doc: ': specifies the sequence in command line'
  type: string?
  inputBinding:
    prefix: -s
- id: in_fast_a
  doc: ': allows DNA sequences in FASTA format'
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_res
  doc: ': "resolution" (error level)'
  type: string?
  inputBinding:
    prefix: -res
- id: in_from
  doc: ': starting position n'
  type: string?
  inputBinding:
    prefix: -from
- id: in_to
  doc: ': end position n'
  type: string?
  inputBinding:
    prefix: -to
- id: in_minsize
  doc: ': repeats whose size is at least n'
  type: long?
  inputBinding:
    prefix: -minsize
- id: in_maxsize
  doc: ': repeats whose size is at most n'
  type: long?
  inputBinding:
    prefix: -maxsize
- id: in_min_period
  doc: ': repeats whose period is at least n'
  type: string?
  inputBinding:
    prefix: -minperiod
- id: in_max_period
  doc: ': repeats whose period is at most n'
  type: string?
  inputBinding:
    prefix: -maxperiod
- id: in_exp
  doc: ': repeats whose exponent is at least x'
  type: string?
  inputBinding:
    prefix: -exp
- id: in_allow_small
  doc: ': output small repeats that can occur randomly'
  type: boolean?
  inputBinding:
    prefix: -allowsmall
- id: in_win
  doc: ': process by sliding windows of size 2*n overlaping by n'
  type: long?
  inputBinding:
    prefix: -win
- id: in_version
  doc: ': show version'
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_xml_output
  doc: ': outputs to <file> in xml format'
  type: File?
  inputBinding:
    prefix: -xmloutput
- id: in_no_print
  doc: ': if specified, the repetition sequences will not be output'
  type: boolean?
  inputBinding:
    prefix: -noprint
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mreps
