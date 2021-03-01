class: CommandLineTool
id: pbindex.cwl
inputs:
- id: in_in_dot_bam
  doc: FILE  Input BAM file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0
cwlVersion: v1.1
baseCommand:
- pbindex
