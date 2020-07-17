class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_for_ebseq_calculate_clustering_info.cwl
inputs:
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_reference_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-calculate-clustering-info
