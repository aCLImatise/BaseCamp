class: CommandLineTool
id: datander.cwl
inputs:
- id: v
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: k
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- datander
