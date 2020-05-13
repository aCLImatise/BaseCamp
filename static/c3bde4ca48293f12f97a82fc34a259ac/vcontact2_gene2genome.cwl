class: CommandLineTool
id: vcontact2_gene2genome.cwl
inputs:
- id: source_type
  doc: Select one of the options as an input source. MetaGeneMark can be either the
    nucleotide or protein FASTA-formatted output.
  type: string
  inputBinding:
    prefix: --source-type
- id: keep_descriptions
  doc: This will enable taking the full description of sequences during MetaGeneMark
    parsing.
  type: boolean
  inputBinding:
    prefix: --keep-descriptions
- id: compatibility
  doc: Adds compatibility for vContact1 headers.
  type: boolean
  inputBinding:
    prefix: --compatibility
outputs: []
cwlVersion: v1.1
baseCommand:
- vcontact2_gene2genome
