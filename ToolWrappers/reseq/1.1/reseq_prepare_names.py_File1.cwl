class: CommandLineTool
id: reseq_prepare_names.py_File1.cwl
inputs:
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 0
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
- File1
