class: CommandLineTool
id: MakeNodeGraph.py.cwl
inputs:
- id: in_fp_rate
  doc: 'False positive rate. (default: 0.0001)'
  type: double?
  inputBinding:
    prefix: --fp_rate
- id: in_intersect_node_graph
  doc: "Location of Node Graph. Will only insert query k-mers\nin bloom filter if\
    \ they appear anywhere in the\ntraining database. Note that the Jaccard estimates\n\
    will now be J(query intersect union_i training_i,\ntraining_i) instead of J(query,\
    \ training_i), but will\nuse significantly less space (unfortunately will also\n\
    disable threading). (default: None)"
  type: string?
  inputBinding:
    prefix: --intersect_nodegraph
- id: in_k_size
  doc: 'K-mer size (default: 21)'
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_threads
  doc: "Number of threads to use (default: 8)\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_in_file
  doc: 'Input file: FASTQ/A file (can be gzipped).'
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MakeNodeGraph.py
