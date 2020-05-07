class: CommandLineTool
id: rsem_for_ebseq_calculate_clustering_info_k_input_reference_fasta_file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-calculate-clustering-info
- k
- input_reference_fasta_file
