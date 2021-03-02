class: CommandLineTool
id: .plasmidfinder_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidfinder:2.1.1--0
cwlVersion: v1.1
baseCommand:
- .plasmidfinder-post-link.sh
