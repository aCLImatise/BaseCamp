class: CommandLineTool
id: bam_score_filter.py.cwl
inputs:
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
- id: f
  doc: Input/output format (SAM).
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: 'Filtering strategy: top_per_query, query_coverage, ref_coverage (top_per_query).'
  type: string
  inputBinding:
    prefix: -s
- id: q
  doc: Minimum query coverage fraction (0.8).
  type: string
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_score_filter.py
