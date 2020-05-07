class: CommandLineTool
id: rsem_for_ebseq_generate_ngvector_from_clustering_info_input_file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-generate-ngvector-from-clustering-info
- input_file
