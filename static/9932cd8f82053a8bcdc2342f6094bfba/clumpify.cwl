class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clumpify.sh.cwl
inputs:
- id: compression_dot
  doc: Should be disabled for paired reads.
  type: string
  inputBinding:
    position: 0
- id: reads_dot
  doc: Yields the highest compression.
  type: string
  inputBinding:
    position: 0
- id: non_duplicate_dot
  doc: Improves detection of inexact duplicates.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clumpify.sh
