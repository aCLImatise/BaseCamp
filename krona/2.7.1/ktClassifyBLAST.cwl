#!/usr/bin/env cwl-runner

baseCommand:
- ktClassifyBLAST
class: CommandLineTool
cwlVersion: v1.0
id: ktclassifyblast
inputs:
- doc: File containing BLAST results in tabular format ("Hit table (text)" when downloading
    from NCBI). If running BLAST locally, subject IDs in the local database must contain
    accession numbers, either bare or in the fourth field of the pipe-separated ("gi|12345|xx|ABC123.1|")
    format. _________
  id: blast_output
  inputBinding:
    position: 0
  type: string
- doc: The query ID as it appears in the BLAST results.
  id: query_id
  inputBinding:
    position: 0
  type: string
- doc: The NCBI taxonomy ID the query was assigned to (or -1 if it has no hits).
  id: taxid
  inputBinding:
    position: 1
  type: string
- doc: The score of the assignment(s); by default, the average E-value of "best" hits
    (see -p, -b).
  id: score
  inputBinding:
    position: 2
  type: string
- doc: The number of assignments.
  id: count
  inputBinding:
    position: 3
  type: string
