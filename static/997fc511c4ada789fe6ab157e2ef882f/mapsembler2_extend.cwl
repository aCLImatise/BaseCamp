class: CommandLineTool
id: mapsembler2_extend.cwl
inputs:
- id: in_default_strict_sequence
  doc: "Default: 1\n1: a strict sequence: any branching stops the extension\n2: a\
    \ consensus sequence: contiging approach\n3: a strict graph: any branching is\
    \ conserved in the graph\n4: a consensus graph: \"small\" polymorphism is merged,\
    \ but \"large\" structures are represented"
  type: long?
  inputBinding:
    prefix: -t
- id: in_size_kmers_used
  doc: ': Size of the k-mers used duriung the extension phase Default: 31. Accepted
    range, depends on the compilation (make k=42 for instance)'
  type: long?
  inputBinding:
    prefix: -k
- id: in_sequence_covered_at
  doc: ': a sequence is covered by at least min_coverage coherent reads. Default:
    2'
  type: long?
  inputBinding:
    prefix: -c
- id: in_estimation_size_genome
  doc: ": estimation of the size of the genome whose reads come from.\nIt is in bp,\
    \ does not need to be accurate, only controls memory usage. Default: 3 billion"
  type: long?
  inputBinding:
    prefix: -g
- id: in_limit_max_length
  doc: ': limit max of nodes length. Default: 40'
  type: long?
  inputBinding:
    prefix: -x
- id: in_limit_max_graph
  doc: ': limit max of graph depth.Default: 10000'
  type: long?
  inputBinding:
    prefix: -y
- id: in_stores_index_files
  doc: ": stores the index files in files starting with this prefix name. Can be re-used\
    \ latter. Default: \"index\"\nIF THE FILE \"index_name.bloom\" EXISTS: the index\
    \ is not re-created"
  type: File?
  inputBinding:
    prefix: -i
- id: in_where_write_outputs
  doc: ': where to write outputs. Default: "res_mapsembler"'
  type: File?
  inputBinding:
    prefix: -o
- id: in_kind_of_prosses
  doc: ': kind of prosses Breadth or Depth. Default: Breadth'
  type: string?
  inputBinding:
    prefix: -p
- id: in_this_message_exit
  doc: this message and exit
  type: string?
  inputBinding:
    prefix: -h
- id: in_to_do
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mapsembler2_extend
