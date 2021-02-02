class: CommandLineTool
id: mappedCoverage.cwl
inputs:
- id: in_mask
  doc: "Read sequences from in.fasta, lower-case mask\nany base with an alignment,\
    \ write to out.fasta"
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_cov
  doc: Write coverage statistics to 'dat' instead of stdout
  type: boolean
  inputBinding:
    prefix: -cov
- id: in_raw
  doc: "If present, assume the 'sim4db-results' are\na space-separated list of 'iid\
    \ begin end', one per line"
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_blast
  doc: "Same idea as raw, expects 'UID.IID' for query id,\nblast format (-m) 9."
  type: boolean
  inputBinding:
    prefix: -blast
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mappedCoverage
