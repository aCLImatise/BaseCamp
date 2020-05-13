class: CommandLineTool
id: phyluce_align_filter_characters_from_alignments.cwl
inputs:
- id: alignments
  doc: The input alignment files to filter
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The output FASTA file to create
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_filter_characters_from_alignments
