class: CommandLineTool
id: bam_score_filter.py.cwl
inputs:
- id: in_inputoutput_format_sam
  doc: Input/output format (SAM).
  type: string?
  inputBinding:
    prefix: -f
- id: in_filtering_strategy_topperquery
  doc: "Filtering strategy: top_per_query, query_coverage,\nref_coverage (top_per_query)."
  type: string?
  inputBinding:
    prefix: -s
- id: in_minimum_query_coverage
  doc: Minimum query coverage fraction (0.8).
  type: double?
  inputBinding:
    prefix: -q
- id: in_input_file
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: Output SAM file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bam_score_filter.py
