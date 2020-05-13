class: CommandLineTool
id: phyluce_utilities_get_bed_from_fasta.cwl
inputs:
- id: input
  doc: The fasta file to parse
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The BED file to create
  type: string
  inputBinding:
    prefix: --output
- id: locus_prefix
  doc: A prefix to add to each locus name
  type: string
  inputBinding:
    prefix: --locus-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_get_bed_from_fasta
