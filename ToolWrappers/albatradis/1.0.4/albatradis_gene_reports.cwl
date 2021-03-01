class: CommandLineTool
id: albatradis_gene_reports.cwl
inputs:
- id: in_prefix
  doc: 'Output directory prefix (default: output)'
  type: Directory?
  inputBinding:
    prefix: --prefix
- id: in_verbose
  doc: "Print out more information about the analysis while it\nruns (default: False)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_gene_reports
  doc: Gene report spreadsheets
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'Output directory prefix (default: output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- albatradis-gene_reports
