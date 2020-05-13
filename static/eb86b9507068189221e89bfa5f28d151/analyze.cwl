class: CommandLineTool
id: analyze.cwl
inputs:
- id: w
  doc: ': report wrong classified patterns (default)'
  type: boolean
  inputBinding:
    prefix: -w
- id: r
  doc: ': report right classified patterns'
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: ': report unclassified patterns'
  type: boolean
  inputBinding:
    prefix: -u
- id: a
  doc: ': same as -w -r -u'
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: '"t c"         : report confusion from class t to c (-1 = noclass)'
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: ': show statistic information'
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: ': show class statistic information'
  type: boolean
  inputBinding:
    prefix: -c
- id: m
  doc: ': show confusion matrix'
  type: boolean
  inputBinding:
    prefix: -m
- id: v
  doc: ': verbous mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: e
  doc: ': select error function  <function> = [402040 | WTA | band] default = 402040'
  type: string
  inputBinding:
    prefix: -e
- id: l
  doc: ': lower bound level (see documentation)  default: 0.4 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  type: double
  inputBinding:
    prefix: -l
- id: h
  doc: ': upper bound level (see documentation)  default: 0.6 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  type: double
  inputBinding:
    prefix: -h
- id: i
  doc: ': input result file (default stdin)'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ': output file (default stdout)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze
