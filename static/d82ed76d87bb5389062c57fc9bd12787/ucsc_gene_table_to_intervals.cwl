class: CommandLineTool
id: ucsc_gene_table_to_intervals.py.cwl
inputs:
- id: region
  doc: 'Limit to region: one of coding, utr3, utr5, transcribed [default]'
  type: string
  inputBinding:
    prefix: --region
- id: exons
  doc: Only print intervals overlapping an exon
  type: boolean
  inputBinding:
    prefix: --exons
- id: strand
  doc: Print strand after interval
  type: boolean
  inputBinding:
    prefix: --strand
- id: no_bin
  doc: file doesn't contain a 'bin' column (use this for pre- hg18 files)
  type: boolean
  inputBinding:
    prefix: --nobin
outputs: []
cwlVersion: v1.1
baseCommand:
- ucsc_gene_table_to_intervals.py
