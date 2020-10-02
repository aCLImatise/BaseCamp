class: CommandLineTool
id: QueryDNADatabase.py.cwl
inputs:
- id: in_threads
  doc: 'Number of threads to use (default: 8)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_force
  doc: 'Force creation of new NodeGraph. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: in_fp_rate
  doc: 'False positive rate. (default: 0.0001)'
  type: double
  inputBinding:
    prefix: --fp_rate
- id: in_containment_threshold
  doc: "Only return results with containment index above this\nvalue (default: 0.02)"
  type: double
  inputBinding:
    prefix: --containment_threshold
- id: in_confidence
  doc: "Desired probability that all results were returned\nwith containment index\
    \ above threshold [-ct] (default:\n0.95)"
  type: double
  inputBinding:
    prefix: --confidence
- id: in_node_graph
  doc: "NodeGraph/bloom filter location. Used if it exists; if\nnot, one will be created\
    \ and put in the same directory\nas the specified output CSV file. (default: None)"
  type: File
  inputBinding:
    prefix: --node_graph
- id: in_base_name
  doc: "Flag to indicate that only the base names (not the\nfull path) should be saved\
    \ in the output CSV file\n(default: False)"
  type: File
  inputBinding:
    prefix: --base_name
- id: in_intersect_node_graph
  doc: "Option to only insert query k-mers in bloom filter if\nthey appear anywhere\
    \ in the training database. Note\nthat the Jaccard estimates will now be J(query\n\
    intersect union_i training_i, training_i) instead of\nJ(query, training_i), but\
    \ will use significantly less\nspace. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --intersect_nodegraph
- id: in_in_file
  doc: 'Input file: FASTQ/A file (can be gzipped).'
  type: string
  inputBinding:
    position: 0
- id: in_training_data
  doc: "Training/reference data (HDF5 file created by\nMakeTrainingDatabase.py)"
  type: string
  inputBinding:
    position: 1
- id: in_out_csv
  doc: Output CSV file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_node_graph
  doc: "NodeGraph/bloom filter location. Used if it exists; if\nnot, one will be created\
    \ and put in the same directory\nas the specified output CSV file. (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_node_graph)
- id: out_base_name
  doc: "Flag to indicate that only the base names (not the\nfull path) should be saved\
    \ in the output CSV file\n(default: False)"
  type: File
  outputBinding:
    glob: $(inputs.in_base_name)
cwlVersion: v1.1
baseCommand:
- QueryDNADatabase.py
