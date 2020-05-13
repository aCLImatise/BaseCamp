class: CommandLineTool
id: prepare_refseqs.pl.cwl
inputs:
- id: track_config
  doc: "'{ \"glyph\": \"ProcessedTranscript\" }'"
  type: boolean
  inputBinding:
    prefix: --trackConfig
outputs: []
cwlVersion: v1.1
baseCommand:
- prepare-refseqs.pl
