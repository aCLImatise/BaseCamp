class: CommandLineTool
id: ktClassifyHits.cwl
inputs:
- id: in_hits
  doc: "Tabular file whose fields are [query, subject, score]. Subject must\nbe an\
    \ accession or contain one in the fourth field of pipe notation\n(e.g. \"gi|12345|xx|ABC123.1|\"\
    . The subject and score can be omitted to\ninclude a query that has no hits, which\
    \ will be assigned a taxonomy ID\nof -1.\n_________"
  type: string
  inputBinding:
    position: 0
- id: in_query_id
  doc: The query ID as it appears in the input.
  type: string
  inputBinding:
    position: 0
- id: in_taxid
  doc: "The NCBI taxonomy ID the query was assigned to (or -1 if it has no\nhits)."
  type: string
  inputBinding:
    position: 1
- id: in_score
  doc: "The score of the assignment(s); by default, the average E-value of\n\"best\"\
    \ hits (see -p, -b)."
  type: string
  inputBinding:
    position: 2
- id: in_count
  doc: The number of assignments.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktClassifyHits
