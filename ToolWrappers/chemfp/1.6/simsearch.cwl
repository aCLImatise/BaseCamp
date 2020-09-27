class: CommandLineTool
id: simsearch.cwl
inputs:
- id: in_k_nearest
  doc: "select the k nearest neighbors (use 'all' for all\nneighbors)"
  type: long
  inputBinding:
    prefix: --k-nearest
- id: in_threshold
  doc: minimum similarity score threshold
  type: double
  inputBinding:
    prefix: --threshold
- id: in_queries
  doc: filename containing the query fingerprints
  type: File
  inputBinding:
    prefix: --queries
- id: in_nxn
  doc: "use the targets as the queries, and exclude the self-\nsimilarity term"
  type: boolean
  inputBinding:
    prefix: --NxN
- id: in_query
  doc: "query as a structure record (default format: 'smi')"
  type: string
  inputBinding:
    prefix: --query
- id: in_hex_query
  doc: query in hex
  type: string
  inputBinding:
    prefix: --hex-query
- id: in_query_id
  doc: "id for the query or hex-query (default: 'Query1'"
  type: long
  inputBinding:
    prefix: --query-id
- id: in_query_structures
  doc: read strutures
  type: File
  inputBinding:
    prefix: --query-structures
- id: in_query_format
  doc: "input query format (default uses the file extension,\nelse 'fps' for --queries\
    \ and 'smi' for query\nstructures)"
  type: File
  inputBinding:
    prefix: --query-format
- id: in_target_format
  doc: "input target format (default uses the file extension,\nelse 'fps')"
  type: File
  inputBinding:
    prefix: --target-format
- id: in_id_tag
  doc: "tag containing the record id if --query-structures is\nan SD file)"
  type: File
  inputBinding:
    prefix: --id-tag
- id: in_errors
  doc: "how should structure parse errors be handled?\n(default=ignore)"
  type: string
  inputBinding:
    prefix: --errors
- id: in_output
  doc: output filename (default is stdout)
  type: File
  inputBinding:
    prefix: --output
- id: in_count
  doc: report counts
  type: boolean
  inputBinding:
    prefix: --count
- id: in_batch_size
  doc: batch size
  type: long
  inputBinding:
    prefix: --batch-size
- id: in_scan
  doc: scan the file to find matches (low memory overhead)
  type: boolean
  inputBinding:
    prefix: --scan
- id: in_memory
  doc: "build and search an in-memory data structure (faster\nfor multiple queries)"
  type: boolean
  inputBinding:
    prefix: --memory
- id: in_times
  doc: report load and execution times to stderr
  type: boolean
  inputBinding:
    prefix: --times
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename (default is stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- simsearch
