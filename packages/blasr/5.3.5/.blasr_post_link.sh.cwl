class: CommandLineTool
id: .blasr_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blasr:5.3.5--0
cwlVersion: v1.1
baseCommand:
- .blasr-post-link.sh
