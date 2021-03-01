class: CommandLineTool
id: MakeDNADatabase.py.cwl
inputs:
- id: in_prime
  doc: 'Prime (for modding hashes) (default: 9999999999971)'
  type: long?
  inputBinding:
    prefix: --prime
- id: in_threads
  doc: 'Number of threads to use (default: 8)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_num_hashes
  doc: 'Number of hashes to use. (default: 500)'
  type: long?
  inputBinding:
    prefix: --num_hashes
- id: in_k_size
  doc: 'K-mer size (default: 21)'
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_intersect_node_graph
  doc: "Optional flag to export Nodegraph file (bloom filter)\ncontaining all k-mers\
    \ in the training database. Saved\nin same location as out_file. This is to be\
    \ used with\nQueryDNADatabase.py (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --intersect_nodegraph
- id: in_in_file
  doc: "Input file: file containing (absolute) file names of\ntraining genomes."
  type: string
  inputBinding:
    position: 0
- id: in_out_file
  doc: "Output training database/reference file (in HDF5\nformat)"
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
- MakeDNADatabase.py
