class: CommandLineTool
id: mreps.cwl
inputs:
- id: s
  doc: ': specifies the sequence in command line'
  type: string
  inputBinding:
    prefix: -s
- id: fast_a
  doc: ': allows DNA sequences in FASTA format '
  type: boolean
  inputBinding:
    prefix: -fasta
- id: res
  doc: ': "resolution" (error level)'
  type: string
  inputBinding:
    prefix: -res
- id: from
  doc: ': starting position n'
  type: string
  inputBinding:
    prefix: -from
- id: to
  doc: ': end position n'
  type: string
  inputBinding:
    prefix: -to
- id: minsize
  doc: ': repeats whose size is at least n'
  type: string
  inputBinding:
    prefix: -minsize
- id: maxsize
  doc: ': repeats whose size is at most n'
  type: string
  inputBinding:
    prefix: -maxsize
- id: min_period
  doc: ': repeats whose period is at least n'
  type: string
  inputBinding:
    prefix: -minperiod
- id: max_period
  doc: ': repeats whose period is at most n'
  type: string
  inputBinding:
    prefix: -maxperiod
- id: exp
  doc: ': repeats whose exponent is at least x'
  type: string
  inputBinding:
    prefix: -exp
- id: allow_small
  doc: ': output small repeats that can occur randomly'
  type: boolean
  inputBinding:
    prefix: -allowsmall
- id: win
  doc: ': process by sliding windows of size 2*n overlaping by n'
  type: string
  inputBinding:
    prefix: -win
- id: version
  doc: ': show version'
  type: boolean
  inputBinding:
    prefix: -version
- id: xml_output
  doc: ': outputs to <file> in xml format'
  type: File
  inputBinding:
    prefix: -xmloutput
- id: no_print
  doc: ': if specified, the repetition sequences will not be output '
  type: boolean
  inputBinding:
    prefix: -noprint
outputs: []
cwlVersion: v1.1
baseCommand:
- mreps
