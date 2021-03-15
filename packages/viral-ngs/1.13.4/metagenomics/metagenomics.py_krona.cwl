class: CommandLineTool
id: metagenomics.py_krona.cwl
inputs:
- id: in_query_column
  doc: Column of query id. (default 2)
  type: long?
  inputBinding:
    prefix: --queryColumn
- id: in_taxid_column
  doc: Column of taxonomy id. (default 3)
  type: long?
  inputBinding:
    prefix: --taxidColumn
- id: in_score_column
  doc: Column of score. (default None)
  type: string?
  inputBinding:
    prefix: --scoreColumn
- id: in_no_hits
  doc: Include wedge for no hits.
  type: boolean?
  inputBinding:
    prefix: --noHits
- id: in_no_rank
  doc: Include no rank assignments.
  type: boolean?
  inputBinding:
    prefix: --noRank
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_in_tsv
  doc: Input tab delimited file.
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: Krona taxonomy database directory.
  type: string
  inputBinding:
    position: 1
- id: in_out_html
  doc: Output html report.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metagenomics.py
- krona
