class: CommandLineTool
id: merBlast_56mer.cwl
inputs:
- id: in_contigs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contigs_hash_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mer_size
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_input_descriptor_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output_file_prefix
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_num_threads
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merBlast_56mer
