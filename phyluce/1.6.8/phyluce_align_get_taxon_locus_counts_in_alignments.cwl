class: CommandLineTool
id: phyluce_align_get_taxon_locus_counts_in_alignments.cwl
inputs:
- id: alignments
  doc: The input directory of alignment files
  type: string
  inputBinding:
    prefix: --alignments
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_taxon_locus_counts_in_alignments
