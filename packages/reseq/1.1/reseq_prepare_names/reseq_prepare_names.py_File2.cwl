class: CommandLineTool
id: reseq_prepare_names.py_File2.cwl
inputs:
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_re_seq_prepare_names_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq-prepare-names.py
- File2
