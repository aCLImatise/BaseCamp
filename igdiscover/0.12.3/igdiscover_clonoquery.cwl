class: CommandLineTool
id: igdiscover_clonoquery.cwl
inputs:
- id: ref_table
  doc: Reference table with parsed and filtered IgBLAST results (filtered.tab)
  type: string
  inputBinding:
    position: 0
- id: query_table
  doc: Query table with IgBLAST results (assigned.tab or filtered.tab)
  type: string
  inputBinding:
    position: 1
- id: minimum_count
  doc: 'Discard all rows with count less than N. Default: 1'
  type: string
  inputBinding:
    prefix: --minimum-count
- id: cdr3_core
  doc: ':END START:END defines the non-junction region of CDR3 sequences. Use negative
    numbers for END to count from the end. Regions before and after are considered
    to be junction sequence, and for two CDR3s to be considered similar, at least
    one of the junctions must be identical. Default: no junction region.'
  type: string
  inputBinding:
    prefix: --cdr3-core
- id: mismatches
  doc: 'No. of allowed mismatches between CDR3 sequences. Can also be a fraction between
    0 and 1 (such as 0.15), interpreted relative to the length of the CDR3 (minus
    the front non-core). Default: 1'
  type: string
  inputBinding:
    prefix: --mismatches
- id: aa
  doc: 'Count CDR3 mismatches on amino-acid level. Default: Compare nucleotides.'
  type: boolean
  inputBinding:
    prefix: --aa
- id: summary
  doc: Write summary table to FILE
  type: File
  inputBinding:
    prefix: --summary
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- clonoquery
