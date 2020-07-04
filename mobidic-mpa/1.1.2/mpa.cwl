class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mpa.cwl
inputs:
- id: mpa_directory
  doc: 'The path to the MPA installation folder. [Default: /tmp/tmpjlb2c7kj/bin]'
  type: string
  inputBinding:
    prefix: --mpa-directory
- id: logging_level
  doc: 'The logger level. [Default: INFO]'
  type: string
  inputBinding:
    prefix: --logging-level
- id: input
  doc: 'The vcf file to annotate (format: VCF). This vcf must be annotate with annovar.'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'The output vcf file with annotation (format : VCF)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mpa
