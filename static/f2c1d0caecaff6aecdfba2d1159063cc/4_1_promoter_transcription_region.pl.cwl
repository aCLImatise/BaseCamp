class: CommandLineTool
id: 4_1_promoter_transcription_region.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sat-bsa:1.12--0
cwlVersion: v1.1
baseCommand:
- 4_1_promoter_transcription_region.pl
