class: CommandLineTool
id: Extract_US_genomes.py_GNUVID_report.cwl
inputs:
- id: in_extract_us_genomes_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_states
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_gnu_vid_report
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- Extract_US_genomes.py
- GNUVID_report
