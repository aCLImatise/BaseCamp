class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gfftoDIEGObed.pl.cwl
inputs:
- id: gff_file_eg
  doc: gff file e.g. from ENSMBL
  type: File
  inputBinding:
    prefix: -g
- id: output_file_name
  doc: output file name (default:annotation_DIEGO.bed)
  type: File
  inputBinding:
    prefix: -o
- id: what_used_genes
  doc: 'what is used as genes (default: gene)'
  type: string
  inputBinding:
    prefix: -w
- id: help_message
  doc: help message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gfftoDIEGObed.pl
