class: CommandLineTool
id: wordcount.cwl
inputs:
- id: in_word_size
  doc: "integer    [@($(acdprotein)? 2 : 4)] Word size (Integer\n1 or more)"
  type: boolean
  inputBinding:
    prefix: -wordsize
- id: in_min_count
  doc: "integer    [1] Minimum word count to report (Integer 1\nor more)"
  type: boolean
  inputBinding:
    prefix: -mincount
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wordcount
