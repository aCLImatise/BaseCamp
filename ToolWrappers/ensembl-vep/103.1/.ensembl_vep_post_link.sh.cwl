class: CommandLineTool
id: .ensembl_vep_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0
cwlVersion: v1.1
baseCommand:
- .ensembl-vep-post-link.sh
