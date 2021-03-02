class: CommandLineTool
id: SnpSift_split.cwl
inputs:
- id: in_join_files_stdout
  doc: ': Join all files in command line (output = STDOUT).'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in__split_lines
  doc: ": Split by 'num' lines."
  type: long?
  inputBinding:
    prefix: -l
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_default
  doc: ': Split by chromosome (one file per chromosome).'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- split
