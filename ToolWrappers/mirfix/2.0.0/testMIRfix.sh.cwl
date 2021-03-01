class: CommandLineTool
id: testMIRfix.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirfix:2.0.0--0
cwlVersion: v1.1
baseCommand:
- testMIRfix.sh
