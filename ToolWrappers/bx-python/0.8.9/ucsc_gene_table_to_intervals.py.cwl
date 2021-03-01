class: CommandLineTool
id: ucsc_gene_table_to_intervals.py.cwl
inputs:
- id: in_region
  doc: "Limit to region: one of coding, utr3, utr5,\ntranscribed [default]"
  type: long?
  inputBinding:
    prefix: --region
- id: in_exons
  doc: Only print intervals overlapping an exon
  type: boolean?
  inputBinding:
    prefix: --exons
- id: in_strand
  doc: Print strand after interval
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_no_bin
  doc: "file doesn't contain a 'bin' column (use this for pre-\nhg18 files)\n"
  type: boolean?
  inputBinding:
    prefix: --nobin
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ucsc_gene_table_to_intervals.py
