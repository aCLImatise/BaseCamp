class: CommandLineTool
id: proteinortho_ffadj_mcs.py.cwl
inputs:
- id: in_repeat_matching
  doc: 'match N repetitions (default: 0)'
  type: long?
  inputBinding:
    prefix: --repeat-matching
- id: in_min_cs_size
  doc: 'minimal cs size (default: 1)'
  type: long?
  inputBinding:
    prefix: --min-cs-size
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0
cwlVersion: v1.1
baseCommand:
- proteinortho_ffadj_mcs.py
