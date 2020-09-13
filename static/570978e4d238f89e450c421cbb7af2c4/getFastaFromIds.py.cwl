class: CommandLineTool
id: ../../../getFastaFromIds.py.cwl
inputs:
- id: in_reverse
  doc: "Retrieve entries which are not in the list, as in grep -v (a\nhomage).\n"
  type: boolean
  inputBinding:
    prefix: --reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getFastaFromIds.py
