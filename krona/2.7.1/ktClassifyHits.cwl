#!/usr/bin/env cwl-runner

baseCommand:
- ktClassifyHits
class: CommandLineTool
cwlVersion: v1.0
id: ktclassifyhits
inputs:
- doc: Tabular file whose fields are [query, subject, score]. Subject must be an accession
    or contain one in the fourth field of pipe notation (e.g. "gi|12345|xx|ABC123.1|".
    The subject and score can be omitted to include a query that has no hits, which
    will be assigned a taxonomy ID of -1. _________
  id: hits
  inputBinding:
    position: 0
  type: string
- doc: The query ID as it appears in the input.
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
