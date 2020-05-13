class: CommandLineTool
id: kraken2_inspect.cwl
inputs:
- id: db
  doc: 'Name for Kraken 2 DB (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: Number of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: skip_counts
  doc: Only print database summary statistics
  type: boolean
  inputBinding:
    prefix: --skip-counts
- id: use_mpa_style
  doc: Format output like Kraken 1's kraken-mpa-report
  type: boolean
  inputBinding:
    prefix: --use-mpa-style
- id: report_zero_counts
  doc: Report counts for ALL taxa, even if counts are zero
  type: boolean
  inputBinding:
    prefix: --report-zero-counts
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken2-inspect
