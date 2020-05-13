class: CommandLineTool
id: ktClassifyHits.cwl
inputs:
- id: hits
  doc: Tabular file whose fields are [query, subject, score]. Subject must be an accession
    or contain one in the fourth field of pipe notation (e.g. "gi|12345|xx|ABC123.1|".
    The subject and score can be omitted to include a query that has no hits, which
    will be assigned a taxonomy ID of -1. _________
  type: string
  inputBinding:
    position: 0
- id: query_id
  doc: The query ID as it appears in the input.
  type: string
  inputBinding:
    position: 0
- id: taxid
  doc: The NCBI taxonomy ID the query was assigned to (or -1 if it has no hits).
  type: string
  inputBinding:
    position: 1
- id: score
  doc: The score of the assignment(s); by default, the average E-value of "best" hits
    (see -p, -b).
  type: string
  inputBinding:
    position: 2
- id: count
  doc: The number of assignments.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ktClassifyHits
