class: CommandLineTool
id: alpha_diversity.py.cwl
inputs:
- id: in_filename
  doc: bracken file with species abundance estimates
  type: File?
  inputBinding:
    prefix: --filename
- id: in_alpha
  doc: "type of alpha diversity to calculate S, BP or F,\ndefault = S\n"
  type: string?
  inputBinding:
    prefix: --alpha
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- alpha_diversity.py
