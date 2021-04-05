class: CommandLineTool
id: abyss_bloom_dist.mk.Makefile.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-bloom-dist.mk.Makefile
