class: CommandLineTool
id: cobs_query.cwl
inputs:
- id: in_file
  doc: query (fasta) file to process
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_index
  doc: path to index file(s)
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_limit
  doc: 'number of results to return, default: all'
  type: boolean?
  inputBinding:
    prefix: --limit
- id: in_load_complete
  doc: load complete index into RAM for batch queries
  type: boolean?
  inputBinding:
    prefix: --load-complete
- id: in_threads
  doc: 'number of threads to use, default: max cores'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_threshold
  doc: "threshold in percentage of terms in query matching,\ndefault: 0.8\n"
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_query
  doc: the text sequence to search for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- query
