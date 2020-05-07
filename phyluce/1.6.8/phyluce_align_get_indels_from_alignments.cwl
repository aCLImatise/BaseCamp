class: CommandLineTool
id: phyluce_align_get_indels_from_alignments.cwl
inputs:
- id: alignments
  doc: The directory containing the alignment files
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The output filename (without extension - code will add .sqlite)
  type: string
  inputBinding:
    prefix: --output
- id: out_group
  doc: The outgroup taxon
  type: string
  inputBinding:
    prefix: --outgroup
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: trim
  doc: Count indels only after removing gaps/missing data from alignment ends
  type: string
  inputBinding:
    prefix: --trim
- id: cores
  doc: The number of cores to use.
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_indels_from_alignments
