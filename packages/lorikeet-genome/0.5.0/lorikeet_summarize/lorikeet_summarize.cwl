class: CommandLineTool
id: lorikeet_summarize.cwl
inputs:
- id: in_bam_files
  doc: ''
  type: string?
  inputBinding:
    prefix: --bam-files
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0
cwlVersion: v1.1
baseCommand:
- lorikeet
- summarize
