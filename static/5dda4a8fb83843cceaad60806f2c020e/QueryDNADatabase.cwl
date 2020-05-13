class: CommandLineTool
id: QueryDNADatabase.py.cwl
inputs:
- id: in_file
  doc: 'Input file: FASTQ/A file (can be gzipped).'
  type: string
  inputBinding:
    position: 0
- id: training_data
  doc: Training/reference data (HDF5 file created by MakeTrainingDatabase.py)
  type: string
  inputBinding:
    position: 1
- id: out_csv
  doc: Output CSV file
  type: string
  inputBinding:
    position: 2
- id: threads
  doc: 'Number of threads to use (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: force
  doc: 'Force creation of new NodeGraph. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: fp_rate
  doc: 'False positive rate. (default: 0.0001)'
  type: string
  inputBinding:
    prefix: --fp_rate
- id: containment_threshold
  doc: 'Only return results with containment index above this value (default: 0.02)'
  type: string
  inputBinding:
    prefix: --containment_threshold
- id: confidence
  doc: 'Desired probability that all results were returned with containment index
    above threshold [-ct] (default: 0.95)'
  type: string
  inputBinding:
    prefix: --confidence
- id: node_graph
  doc: 'NodeGraph/bloom filter location. Used if it exists; if not, one will be created
    and put in the same directory as the specified output CSV file. (default: None)'
  type: string
  inputBinding:
    prefix: --node_graph
- id: base_name
  doc: 'Flag to indicate that only the base names (not the full path) should be saved
    in the output CSV file (default: False)'
  type: boolean
  inputBinding:
    prefix: --base_name
- id: intersect_node_graph
  doc: 'Option to only insert query k-mers in bloom filter if they appear anywhere
    in the training database. Note that the Jaccard estimates will now be J(query
    intersect union_i training_i, training_i) instead of J(query, training_i), but
    will use significantly less space. (default: False)'
  type: boolean
  inputBinding:
    prefix: --intersect_nodegraph
outputs: []
cwlVersion: v1.1
baseCommand:
- QueryDNADatabase.py
