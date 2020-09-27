class: CommandLineTool
id: HomologyByXCorr.cwl
inputs:
- id: in_string_query_sequence
  doc: '<string> : query fasta sequence'
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HomologyByXCorr
