class: CommandLineTool
id: amr_report.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.10.1--h671e170_0
cwlVersion: v1.1
baseCommand:
- amr_report
