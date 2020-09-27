class: CommandLineTool
id: rsem_for_ebseq_generate_ngvector_from_clustering_info.cwl
inputs:
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-for-ebseq-generate-ngvector-from-clustering-info
