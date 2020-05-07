class: CommandLineTool
id: phyluce_assembly_explode_get_fastas_file.cwl
inputs:
- id: input
  doc: The input fasta file to explode
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory to create and in which to store the fastas
  type: string
  inputBinding:
    prefix: --output
- id: by_tax_on
  doc: Split file by taxon and not by locus
  type: boolean
  inputBinding:
    prefix: --by-taxon
- id: split_char
  doc: The character to split on
  type: string
  inputBinding:
    prefix: --split-char
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_explode_get_fastas_file
