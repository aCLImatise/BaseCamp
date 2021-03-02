class: CommandLineTool
id: deepac_gwpa_gff2genome.cwl
inputs:
- id: in_gff_three_dir
  doc: Input directory.
  type: long
  inputBinding:
    position: 0
- id: in_out_dir
  doc: Output directory.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- gwpa
- gff2genome
