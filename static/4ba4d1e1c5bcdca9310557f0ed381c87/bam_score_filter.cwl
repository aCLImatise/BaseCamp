class: CommandLineTool
id: ../../../bam_score_filter.py.cwl
inputs:
- id: inputoutput_format_sam
  doc: Input/output format (SAM).
  type: string
  inputBinding:
    prefix: -f
- id: filtering_strategy_topperquery
  doc: 'Filtering strategy: top_per_query, query_coverage, ref_coverage (top_per_query).'
  type: string
  inputBinding:
    prefix: -s
- id: minimum_query_coverage
  doc: Minimum query coverage fraction (0.8).
  type: string
  inputBinding:
    prefix: -q
- id: input_file
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output SAM file.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_score_filter.py
