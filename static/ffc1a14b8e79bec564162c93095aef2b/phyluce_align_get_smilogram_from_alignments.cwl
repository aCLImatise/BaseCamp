class: CommandLineTool
id: phyluce_align_get_smilogram_from_alignments.cwl
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
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: cores
  doc: The number of cores to use.
  type: string
  inputBinding:
    prefix: --cores
- id: smil_ogram
  doc: Prepare output for smilogram figure
  type: boolean
  inputBinding:
    prefix: --smilogram
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_smilogram_from_alignments
