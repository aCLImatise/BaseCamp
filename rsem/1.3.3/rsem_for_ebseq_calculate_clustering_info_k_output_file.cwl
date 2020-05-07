class: CommandLineTool
id: rsem_for_ebseq_calculate_clustering_info_k_output_file.cwl
inputs:
- id: input_reference_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-calculate-clustering-info
- k
- output_file
