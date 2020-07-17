class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/albatradis_gene_reports.cwl
inputs:
- id: prefix
  doc: 'Output directory prefix (default: output)'
  type: string
  inputBinding:
    prefix: --prefix
- id: verbose
  doc: 'Print out more information about the analysis while it runs (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: gene_reports
  doc: Gene report spreadsheets
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- albatradis-gene_reports
