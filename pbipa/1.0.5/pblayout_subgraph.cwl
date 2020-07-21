class: CommandLineTool
id: ../../../pblayout_subgraph.cwl
inputs:
- id: directed
  doc: Apply the directed ego-graph algorithm to extract the subgraph.
  type: boolean
  inputBinding:
    prefix: --directed
- id: radius
  doc: INT   Radius (in the number of nodes) to extract in each direction. [100]
  type: boolean
  inputBinding:
    prefix: --radius
- id: tp
  doc: STR   Path to a tiling path file. If specified, it will be used to create the
    Bandage CSV.
  type: boolean
  inputBinding:
    prefix: --tp
- id: seq_db
  doc: STR   Path to a SeqDB file. If specified, it will be used to retrieve lengths
    of sequences.
  type: boolean
  inputBinding:
    prefix: --seqdb
- id: use_seq_ids
  doc: Indicates that the sequences in the input graph are actually IDs instead of
    headers.
  type: boolean
  inputBinding:
    prefix: --use-seq-ids
- id: write_seqs
  doc: Write the sequences to the generated GFA file. This requires the '--seqdb'
    to be provided.
  type: boolean
  inputBinding:
    prefix: --write-seqs
- id: csv_nodes
  doc: 'STR   CSV file with a list of nodes to extract. Each line contains 2 columns:
    <node_name> <label>. The label will be used to name the output files.'
  type: boolean
  inputBinding:
    prefix: --csv-nodes
- id: num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: subgraph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sg
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pblayout
- subgraph
