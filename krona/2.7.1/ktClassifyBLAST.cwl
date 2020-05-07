class: CommandLineTool
id: ktClassifyBLAST.cwl
inputs:
- id: blast_output
  doc: File containing BLAST results in tabular format ("Hit table (text)" when downloading
    from NCBI). If running BLAST locally, subject IDs in the local database must contain
    accession numbers, either bare or in the fourth field of the pipe-separated ("gi|12345|xx|ABC123.1|")
    format. _________
  type: string
  inputBinding:
    position: 0
- id: query_id
  doc: The query ID as it appears in the BLAST results.
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
- ktClassifyBLAST
