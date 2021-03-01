class: CommandLineTool
id: .checkm_genome_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- .checkm-genome-post-link.sh
