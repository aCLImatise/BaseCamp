class: CommandLineTool
id: get_sequences_for_meme.py_ec_dir.cwl
inputs:
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_get_sequences_for_meme_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_summary_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ec_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_head
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rilseq:0.81--py_0
cwlVersion: v1.1
baseCommand:
- get_sequences_for_meme.py
- ec_dir
