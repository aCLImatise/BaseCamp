class: CommandLineTool
id: ../../../gaas_scaffold2AGP.pl.cwl
inputs:
- id: ref_file
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: -reffile
- id: output
  doc: Output agp file.
  type: string
  inputBinding:
    prefix: --output
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_scaffold2AGP.pl
