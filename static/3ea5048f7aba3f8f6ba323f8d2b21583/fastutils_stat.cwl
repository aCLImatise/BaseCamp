class: CommandLineTool
id: fastutils_stat.cwl
inputs:
- id: in
  doc: input file in fasta/q format [stdin]
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: min_len
  doc: min read length [0]
  type: long
  inputBinding:
    prefix: --minLen
- id: maxlen
  doc: max read length [INT64_MAX]
  type: long
  inputBinding:
    prefix: --maxLen
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- stat
