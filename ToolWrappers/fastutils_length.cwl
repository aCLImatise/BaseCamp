class: CommandLineTool
id: fastutils_length.cwl
inputs:
- id: in_in
  doc: input file in fasta/q format [stdin]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: --out
- id: in_min_len
  doc: min read length [0]
  type: long
  inputBinding:
    prefix: --minLen
- id: in_maxlen
  doc: max read length [LLONG_MAX]
  type: long
  inputBinding:
    prefix: --maxLen
- id: in_total
  doc: print total number of bases in third column
  type: boolean
  inputBinding:
    prefix: --total
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- fastutils
- length
