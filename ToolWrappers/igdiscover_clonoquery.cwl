class: CommandLineTool
id: igdiscover_clonoquery.cwl
inputs:
- id: in_minimum_count
  doc: 'Discard all rows with count less than N. Default: 1'
  type: long
  inputBinding:
    prefix: --minimum-count
- id: in_cdr_three_core
  doc: ":END\nSTART:END defines the non-junction region of CDR3\nsequences. Use negative\
    \ numbers for END to count from\nthe end. Regions before and after are considered\
    \ to be\njunction sequence, and for two CDR3s to be considered\nsimilar, at least\
    \ one of the junctions must be\nidentical. Default: no junction region."
  type: long
  inputBinding:
    prefix: --cdr3-core
- id: in_mismatches
  doc: "No. of allowed mismatches between CDR3 sequences. Can\nalso be a fraction\
    \ between 0 and 1 (such as 0.15),\ninterpreted relative to the length of the CDR3\
    \ (minus\nthe front non-core). Default: 1"
  type: long
  inputBinding:
    prefix: --mismatches
- id: in_aa
  doc: "Count CDR3 mismatches on amino-acid level. Default:\nCompare nucleotides."
  type: boolean
  inputBinding:
    prefix: --aa
- id: in_summary
  doc: Write summary table to FILE
  type: File
  inputBinding:
    prefix: --summary
- id: in_ref_table
  doc: "Reference table with parsed and filtered IgBLAST\nresults (filtered.tab)"
  type: string
  inputBinding:
    position: 0
- id: in_query_table
  doc: "Query table with IgBLAST results (assigned.tab or\nfiltered.tab)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- clonoquery
