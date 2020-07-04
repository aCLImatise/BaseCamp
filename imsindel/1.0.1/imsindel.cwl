class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/imsindel.cwl
inputs:
- id: output_consensus_seq
  doc: /path/to/output-dir
  type: boolean
  inputBinding:
    prefix: --output-consensus-seq
- id: exclude_region
  doc: /path/to/exclude-list
  type: boolean
  inputBinding:
    prefix: --exclude-region
outputs: []
cwlVersion: v1.1
baseCommand:
- imsindel
