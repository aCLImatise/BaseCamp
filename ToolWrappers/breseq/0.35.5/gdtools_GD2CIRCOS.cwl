class: CommandLineTool
id: gdtools_GD2CIRCOS.cwl
inputs:
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: name of directory to save Circos configuration files and scripts (DEFAULT=circos_output)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_distance
  doc: the distance from the center the first axis will be in proportion to the default
    size (DEFAULT=1.0)
  type: long?
  inputBinding:
    prefix: --distance
- id: in_feature
  doc: the scale of the features in proportion to the default size (DEFAULT=1.0)
  type: long?
  inputBinding:
    prefix: --feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/breseq:0.35.5--h8b12597_0
cwlVersion: v1.1
baseCommand:
- gdtools
- GD2CIRCOS
