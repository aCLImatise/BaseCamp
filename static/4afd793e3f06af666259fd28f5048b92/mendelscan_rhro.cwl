class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mendelscan_rhro.cwl
inputs:
- id: ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean
  inputBinding:
    prefix: --ped-file
- id: centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain informative variants
  type: boolean
  inputBinding:
    prefix: --centromere-file
- id: output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: boolean
  inputBinding:
    prefix: --output-windows
- id: inheritance
  doc: 'Presumed model of inheritance: dominant, recessive, x-linked [dominant]'
  type: boolean
  inputBinding:
    prefix: --inheritance
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rh_ro
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- rhro
