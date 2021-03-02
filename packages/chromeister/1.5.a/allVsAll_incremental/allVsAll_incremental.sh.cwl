class: CommandLineTool
id: allVsAll_incremental.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chromeister:1.5.a--h516909a_0
cwlVersion: v1.1
baseCommand:
- allVsAll_incremental.sh
