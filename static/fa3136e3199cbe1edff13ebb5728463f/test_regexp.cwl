class: CommandLineTool
id: test_regexp.cwl
inputs:
- id: d
  doc: 'debug: show compiled code; implies -i'
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: show information about compiled pattern
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: set size of offsets vector to <n>
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: use POSIX interface
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: output store information
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: time compilation and execution
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- test_regexp
