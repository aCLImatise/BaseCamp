class: CommandLineTool
id: rsem_for_ebseq_generate_ngvector_from_clustering_info_output_file.cwl
inputs:
- id: input_file
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
- rsem-for-ebseq-generate-ngvector-from-clustering-info
- output_file
