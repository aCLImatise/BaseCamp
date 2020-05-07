class: CommandLineTool
id: MakeNodeGraph.py.cwl
inputs:
- id: in_file
  doc: 'Input file: FASTQ/A file (can be gzipped).'
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: fp_rate
  doc: 'False positive rate. (default: 0.0001)'
  type: string
  inputBinding:
    prefix: --fp_rate
- id: intersect_node_graph
  doc: 'Location of Node Graph. Will only insert query k-mers in bloom filter if they
    appear anywhere in the training database. Note that the Jaccard estimates will
    now be J(query intersect union_i training_i, training_i) instead of J(query, training_i),
    but will use significantly less space (unfortunately will also disable threading).
    (default: None)'
  type: long
  inputBinding:
    prefix: --intersect_nodegraph
- id: k_size
  doc: 'K-mer size (default: 21)'
  type: string
  inputBinding:
    prefix: --k_size
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeNodeGraph.py
