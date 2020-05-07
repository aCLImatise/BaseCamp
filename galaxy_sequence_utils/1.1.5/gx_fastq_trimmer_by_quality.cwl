class: CommandLineTool
id: gx_fastq_trimmer_by_quality.cwl
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
- id: window_size
  doc: Window size
  type: string
  inputBinding:
    prefix: --window_size
- id: window_step
  doc: Window step
  type: string
  inputBinding:
    prefix: --window_step
- id: trim_ends
  doc: Ends to Trim
  type: string
  inputBinding:
    prefix: --trim_ends
- id: aggregation_action
  doc: Aggregate action for window
  type: string
  inputBinding:
    prefix: --aggregation_action
- id: exclude_count
  doc: Maximum number of bases to exclude from the window during aggregation
  type: string
  inputBinding:
    prefix: --exclude_count
- id: score_comparison
  doc: Keep read when aggregate score is
  type: string
  inputBinding:
    prefix: --score_comparison
- id: quality_score
  doc: Quality Score
  type: string
  inputBinding:
    prefix: --quality_score
- id: keep_zero_length
  doc: Keep reads with zero length
  type: boolean
  inputBinding:
    prefix: --keep_zero_length
outputs: []
cwlVersion: v1.1
baseCommand:
- gx-fastq-trimmer-by-quality
