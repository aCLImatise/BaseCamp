class: CommandLineTool
id: gx_fastq_masker_by_quality.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: format
  doc: FASTQ variant type
  type: string
  inputBinding:
    prefix: --format
- id: mask_character
  doc: Mask Character to use
  type: string
  inputBinding:
    prefix: --mask_character
- id: score_comparison
  doc: Mask base when score is
  type: string
  inputBinding:
    prefix: --score_comparison
- id: quality_score
  doc: Quality Score
  type: string
  inputBinding:
    prefix: --quality_score
- id: lowercase
  doc: Use lowercase masking
  type: boolean
  inputBinding:
    prefix: --lowercase
outputs: []
cwlVersion: v1.1
baseCommand:
- gx-fastq-masker-by-quality
