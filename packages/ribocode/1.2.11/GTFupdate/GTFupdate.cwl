class: CommandLineTool
id: GTFupdate.cwl
inputs:
- id: in_gtf_file
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1
cwlVersion: v1.1
baseCommand:
- GTFupdate
