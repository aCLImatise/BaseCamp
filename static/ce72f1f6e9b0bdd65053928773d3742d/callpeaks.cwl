class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/callpeaks.sh.cwl
inputs:
- id: increases_dot
  doc: Useful for kmer-frequency histograms.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- callpeaks.sh
