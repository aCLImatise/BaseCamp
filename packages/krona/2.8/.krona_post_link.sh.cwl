class: CommandLineTool
id: .krona_post_link.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- .krona-post-link.sh
