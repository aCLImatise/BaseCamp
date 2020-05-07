class: CommandLineTool
id: slivar_ddc.cwl
inputs:
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ped
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: "limit to this chromosome only. use '-3' for all chromosomes (in the case of\
    \ exome data) (default: chr15)"
  type: string
  inputBinding:
    prefix: --chrom
- id: info_fields
  doc: comma-delimited list of info fields
  type: string
  inputBinding:
    prefix: --info-fields
- id: fmt_fields
  doc: comma-delimited list of sample fields
  type: string
  inputBinding:
    prefix: --fmt-fields
- id: html
  doc: 'path to output file (default: slivar-ddc.html)'
  type: string
  inputBinding:
    prefix: --html
outputs: []
cwlVersion: v1.1
baseCommand:
- slivar
- ddc
