class: CommandLineTool
id: tbl2asn_test.cwl
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
- tbl2asn-test
