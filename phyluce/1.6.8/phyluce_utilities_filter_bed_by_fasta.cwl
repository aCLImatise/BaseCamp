class: CommandLineTool
id: phyluce_utilities_filter_bed_by_fasta.cwl
inputs:
- id: bed
  doc: The BED file to filter.
  type: string
  inputBinding:
    prefix: --bed
- id: fast_a
  doc: The FASTA file to use as a filter.
  type: string
  inputBinding:
    prefix: --fasta
- id: output
  doc: The output BED file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_filter_bed_by_fasta
