class: CommandLineTool
id: bracken_build_KMER_LEN.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bracken-build
- KMER_LEN
