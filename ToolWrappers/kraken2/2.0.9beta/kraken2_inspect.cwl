class: CommandLineTool
id: kraken2_inspect.cwl
inputs:
- id: in_db
  doc: "Name for Kraken 2 DB\n(default: none)"
  type: long?
  inputBinding:
    prefix: --db
- id: in_threads
  doc: Number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_skip_counts
  doc: Only print database summary statistics
  type: boolean?
  inputBinding:
    prefix: --skip-counts
- id: in_use_mpa_style
  doc: Format output like Kraken 1's kraken-mpa-report
  type: boolean?
  inputBinding:
    prefix: --use-mpa-style
- id: in_report_zero_counts
  doc: "Report counts for ALL taxa, even if\ncounts are zero"
  type: boolean?
  inputBinding:
    prefix: --report-zero-counts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kraken2-inspect
