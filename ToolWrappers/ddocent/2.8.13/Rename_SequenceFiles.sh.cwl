class: CommandLineTool
id: Rename_SequenceFiles.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ddocent:2.8.13--0
cwlVersion: v1.1
baseCommand:
- Rename_SequenceFiles.sh
