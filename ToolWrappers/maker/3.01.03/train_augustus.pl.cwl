class: CommandLineTool
id: train_augustus.pl.cwl
inputs:
- id: in_cpus
  doc: <INT>    Number of CPUs to use for training
  type: string
  inputBinding:
    position: 0
- id: in_max
  doc: <INT>    Maximum models to use for optimization
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- train_augustus.pl
