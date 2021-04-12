class: CommandLineTool
id: enrich.cwl
inputs:
- id: in_background
  doc: (if the -g/--go is specified, the -k/--kegg are ignored)
  type: File?
  inputBinding:
    prefix: --background
- id: in_assoc
  doc: 'p value cutoff (default: 0.05)'
  type: File?
  inputBinding:
    prefix: --assoc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- enrich
