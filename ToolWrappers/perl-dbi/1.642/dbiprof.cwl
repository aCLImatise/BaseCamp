class: CommandLineTool
id: dbiprof.cwl
inputs:
- id: in_number
  doc: show top N, defaults to 10
  type: long?
  inputBinding:
    prefix: -number
- id: in_sort
  doc: sort by S, defaults to total
  type: string?
  inputBinding:
    prefix: -sort
- id: in_reverse
  doc: reverse the sort
  type: boolean?
  inputBinding:
    prefix: -reverse
- id: in_match
  doc: =V       for filtering, see docs
  type: string?
  inputBinding:
    prefix: -match
- id: in_exclude
  doc: =V     for filtering, see docs
  type: string?
  inputBinding:
    prefix: -exclude
- id: in_case_sensitive
  doc: for -match and -exclude
  type: boolean?
  inputBinding:
    prefix: -case_sensitive
- id: in_delete
  doc: rename files before reading then delete afterwards
  type: boolean?
  inputBinding:
    prefix: -delete
- id: in_version
  doc: print version number and exit
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dbiprof
