class: CommandLineTool
id: MakeDNADatabase.py.cwl
inputs:
- id: in_file
  doc: 'Input file: file containing (absolute) file names of training genomes.'
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: Output training database/reference file (in HDF5 format)
  type: string
  inputBinding:
    position: 1
- id: prime
  doc: 'Prime (for modding hashes) (default: 9999999999971)'
  type: string
  inputBinding:
    prefix: --prime
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: num_hashes
  doc: 'Number of hashes to use. (default: 500)'
  type: string
  inputBinding:
    prefix: --num_hashes
- id: k_size
  doc: 'K-mer size (default: 21)'
  type: string
  inputBinding:
    prefix: --k_size
- id: intersect_node_graph
  doc: 'Optional flag to export Nodegraph file (bloom filter) containing all k-mers
    in the training database. Saved in same location as out_file. This is to be used
    with QueryDNADatabase.py (default: False)'
  type: boolean
  inputBinding:
    prefix: --intersect_nodegraph
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeDNADatabase.py
