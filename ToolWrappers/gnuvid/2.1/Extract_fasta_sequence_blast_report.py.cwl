class: CommandLineTool
id: Extract_fasta_sequence_blast_report.py.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_folder
  doc: output folder name & quality report prefix
  type: string
  inputBinding:
    position: 0
- id: in_directory_path
  doc: path to directory of blast reports
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- Extract_fasta_sequence_blast_report.py
