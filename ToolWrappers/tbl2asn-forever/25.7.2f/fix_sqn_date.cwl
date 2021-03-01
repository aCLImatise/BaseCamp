class: CommandLineTool
id: fix_sqn_date.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0
cwlVersion: v1.1
baseCommand:
- fix-sqn-date
