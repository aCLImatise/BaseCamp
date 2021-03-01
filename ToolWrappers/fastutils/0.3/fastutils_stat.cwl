class: CommandLineTool
id: fastutils_stat.cwl
inputs:
- id: in_in
  doc: input file in fasta/q format [stdin]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: output file [stdout]
  type: File?
  inputBinding:
    prefix: --out
- id: in_min_len
  doc: min read length [0]
  type: long?
  inputBinding:
    prefix: --minLen
- id: in_maxlen
  doc: max read length [INT64_MAX]
  type: long?
  inputBinding:
    prefix: --maxLen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- fastutils
- stat
