class: CommandLineTool
id: wgfast_genbankqc_genome_PATH.cwl
inputs:
- id: in_metadata
  doc: Get metadata for genome at PATH
  type: boolean?
  inputBinding:
    prefix: --metadata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wgfast_genbankqc
- genome
- PATH
