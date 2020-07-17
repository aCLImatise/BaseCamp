class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_convert_mfannot2gff.pl.cwl
inputs:
- id: m_fan_not
  doc: The mfannot input file
  type: string
  inputBinding:
    prefix: --mfannot
- id: gff
  doc: the gff output file
  type: string
  inputBinding:
    prefix: --gff
- id: gaas_convert_mfannottwogffdotpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_mfannot2gff.pl
