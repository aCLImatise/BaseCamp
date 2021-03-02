class: CommandLineTool
id: iu_visualize_mismatch_distribution.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.10--py_0
cwlVersion: v1.1
baseCommand:
- iu-visualize-mismatch-distribution
