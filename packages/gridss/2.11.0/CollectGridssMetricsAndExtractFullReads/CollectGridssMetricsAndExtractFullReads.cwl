class: CommandLineTool
id: CollectGridssMetricsAndExtractFullReads.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gridss:2.11.0--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- CollectGridssMetricsAndExtractFullReads
