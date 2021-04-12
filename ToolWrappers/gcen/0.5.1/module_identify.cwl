class: CommandLineTool
id: module_identify.cwl
inputs:
- id: in_similarity
  doc: 'similarity cutoff (default: 0.5)'
  type: File?
  inputBinding:
    prefix: --similarity
- id: in_thread
  doc: 'cpu cores (default: 2)'
  type: long?
  inputBinding:
    prefix: --thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- module_identify
