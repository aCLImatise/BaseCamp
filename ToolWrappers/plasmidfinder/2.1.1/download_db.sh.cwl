class: CommandLineTool
id: download_db.sh.cwl
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
- download-db.sh
