class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pynnotator_or.cwl
inputs:
- id: vcf_file_annotated
  doc: a VCF file to be annotated
  type: string
  inputBinding:
    prefix: -i
- id: hg_genome_build
  doc: or hg38  The genome build you want to use
  type: string
  inputBinding:
    prefix: -b
- id: options
  doc: install test
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pynnotator
- or
