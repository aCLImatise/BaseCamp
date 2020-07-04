class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/capC_MAP_genomedigest.cwl
inputs:
- id: input_fasta_file
  doc: input fasta file of geneome
  type: string
  inputBinding:
    prefix: -i
- id: name_supported_enzyme
  doc: name of supported enzyme, or cutting sequence
  type: string
  inputBinding:
    prefix: -r
- id: output_bed_file
  doc: output bed file of restriction fragments
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- genomedigest
