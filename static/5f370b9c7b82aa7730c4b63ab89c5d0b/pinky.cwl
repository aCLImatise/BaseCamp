class: CommandLineTool
id: pinky.cwl
inputs:
- id: l
  doc: long format output for the specified USERs
  type: string
  inputBinding:
    prefix: -l
- id: b
  doc: the user's home directory and shell in long format
  type: string
  inputBinding:
    prefix: -b
- id: h
  doc: the user's project file in long format
  type: string
  inputBinding:
    prefix: -h
- id: p
  doc: the user's plan file in long format
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: short format output, this is the default
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: the line of column headings in short format
  type: string
  inputBinding:
    prefix: -f
- id: w
  doc: the user's full name in short format
  type: string
  inputBinding:
    prefix: -w
- id: i
  doc: the user's full name and remote host in short format
  type: string
  inputBinding:
    prefix: -i
- id: q
  doc: the user's full name, remote host and idle time in short format
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- pinky
