class: CommandLineTool
id: rsem_for_ebseq_calculate_clustering_info.cwl
inputs:
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_reference_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-calculate-clustering-info
