class: CommandLineTool
id: ../../../vcontact2_gene2genome.cwl
inputs:
- id: in_proteins
  doc: ''
  type: File
  inputBinding:
    prefix: --proteins
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: --output
- id: in_source_type
  doc: Select one of the options as an input source. MetaGeneMark can be either the
    nucleotide or protein FASTA-formatted output.
  type: string
  inputBinding:
    prefix: --source-type
- id: in_keep_descriptions
  doc: This will enable taking the full description of sequences during MetaGeneMark
    parsing.
  type: boolean
  inputBinding:
    prefix: --keep-descriptions
- id: in_compatibility
  doc: Adds compatibility for vContact1 headers.
  type: boolean
  inputBinding:
    prefix: --compatibility
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcontact2_gene2genome
