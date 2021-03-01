class: CommandLineTool
id: deepac_strain_eval.cwl
inputs:
- id: in_species
  doc: Species-wise evaluation.
  type: string?
  inputBinding:
    prefix: --species
- id: in_reads
  doc: Read-wise evaluation.
  type: string?
  inputBinding:
    prefix: --reads
- id: in_ensemble
  doc: "Simple ensemble evaluation.\n"
  type: string?
  inputBinding:
    prefix: --ensemble
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_eval
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacstrain:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- deepac-strain
- eval
