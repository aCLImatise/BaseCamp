class: CommandLineTool
id: pblayout_subgraph.cwl
inputs:
- id: in_directed
  doc: "Apply the directed ego-graph algorithm to\nextract the subgraph."
  type: boolean
  inputBinding:
    prefix: --directed
- id: in_radius
  doc: "INT   Radius (in the number of nodes) to extract in\neach direction. [100]"
  type: boolean
  inputBinding:
    prefix: --radius
- id: in_tp
  doc: "STR   Path to a tiling path file. If specified, it\nwill be used to create\
    \ the Bandage CSV."
  type: boolean
  inputBinding:
    prefix: --tp
- id: in_seq_db
  doc: "STR   Path to a SeqDB file. If specified, it will be\nused to retrieve lengths\
    \ of sequences."
  type: boolean
  inputBinding:
    prefix: --seqdb
- id: in_use_seq_ids
  doc: "Indicates that the sequences in the input\ngraph are actually IDs instead\
    \ of headers."
  type: boolean
  inputBinding:
    prefix: --use-seq-ids
- id: in_write_seqs
  doc: "Write the sequences to the generated GFA file.\nThis requires the '--seqdb'\
    \ to be provided."
  type: boolean
  inputBinding:
    prefix: --write-seqs
- id: in_csv_nodes
  doc: "STR   CSV file with a list of nodes to extract. Each\nline contains 2 columns:\
    \ <node_name> <label>.\nThe label will be used to name the output\nfiles."
  type: File
  inputBinding:
    prefix: --csv-nodes
- id: in_num_threads
  doc: "INT   Number of threads to use, 0 means\nautodetection. [0]"
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR   Set log level. Valid choices: (TRACE, DEBUG,\nINFO, WARN, FATAL). [WARN]"
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_in_sg
  doc: STR   Input string graph in the sg_edges_list
  type: string
  inputBinding:
    position: 0
- id: in_format_dot
  doc: out_prefix               STR   Output prefix.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv_nodes
  doc: "STR   CSV file with a list of nodes to extract. Each\nline contains 2 columns:\
    \ <node_name> <label>.\nThe label will be used to name the output\nfiles."
  type: File
  outputBinding:
    glob: $(inputs.in_csv_nodes)
cwlVersion: v1.1
baseCommand:
- pblayout
- subgraph
