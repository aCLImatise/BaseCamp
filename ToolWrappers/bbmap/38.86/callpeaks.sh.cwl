class: CommandLineTool
id: callpeaks.sh.cwl
inputs:
- id: in_increases_dot
  doc: Useful for kmer-frequency histograms.
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
- callpeaks.sh
