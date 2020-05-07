class: CommandLineTool
id: simsearch.cwl
inputs:
- id: target_filename
  doc: target filename
  type: string
  inputBinding:
    position: 0
- id: k_nearest
  doc: select the k nearest neighbors (use 'all' for all neighbors)
  type: string
  inputBinding:
    prefix: --k-nearest
- id: threshold
  doc: minimum similarity score threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: queries
  doc: filename containing the query fingerprints
  type: string
  inputBinding:
    prefix: --queries
- id: nxn
  doc: use the targets as the queries, and exclude the self- similarity term
  type: boolean
  inputBinding:
    prefix: --NxN
- id: query
  doc: "query as a structure record (default format: 'smi')"
  type: string
  inputBinding:
    prefix: --query
- id: hex_query
  doc: query in hex
  type: string
  inputBinding:
    prefix: --hex-query
- id: query_id
  doc: "id for the query or hex-query (default: 'Query1'"
  type: string
  inputBinding:
    prefix: --query-id
- id: query_format
  doc: input query format (default uses the file extension, else 'fps')
  type: string
  inputBinding:
    prefix: --query-format
- id: target_format
  doc: input target format (default uses the file extension, else 'fps')
  type: string
  inputBinding:
    prefix: --target-format
- id: output
  doc: output filename (default is stdout)
  type: File
  inputBinding:
    prefix: --output
- id: count
  doc: report counts
  type: boolean
  inputBinding:
    prefix: --count
- id: batch_size
  doc: batch size
  type: string
  inputBinding:
    prefix: --batch-size
- id: scan
  doc: scan the file to find matches (low memory overhead)
  type: boolean
  inputBinding:
    prefix: --scan
- id: memory
  doc: build and search an in-memory data structure (faster for multiple queries)
  type: boolean
  inputBinding:
    prefix: --memory
- id: times
  doc: report load and execution times to stderr
  type: boolean
  inputBinding:
    prefix: --times
outputs: []
cwlVersion: v1.1
baseCommand:
- simsearch
