class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merBlast_56mer.cwl
inputs:
- id: contigs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_hash_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mer_size
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: input_descriptor_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_file_prefix
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: num_threads
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- merBlast_56mer
