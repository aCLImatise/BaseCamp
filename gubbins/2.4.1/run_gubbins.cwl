class: CommandLineTool
id: run_gubbins.py.cwl
inputs:
- id: alignment_filename
  doc: Multifasta alignment file
  type: string
  inputBinding:
    position: 0
- id: out_group
  doc: 'Outgroup name for rerooting. A list of comma separated names can be used if
    they form a clade (default: None)'
  type: string
  inputBinding:
    prefix: --outgroup
- id: starting_tree
  doc: 'Starting tree (default: None)'
  type: string
  inputBinding:
    prefix: --starting_tree
- id: use_time_stamp
  doc: 'Use a time stamp in file names (default: False)'
  type: boolean
  inputBinding:
    prefix: --use_time_stamp
- id: verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_cleanup
  doc: 'Dont cleanup intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_cleanup
- id: tree_builder
  doc: 'Application to use for tree building (default: raxml)'
  type: string
  inputBinding:
    prefix: --tree_builder
- id: iterations
  doc: 'Maximum No. of iterations (default: 5)'
  type: string
  inputBinding:
    prefix: --iterations
- id: min_snps
  doc: 'Min SNPs to identify a recombination block (default: 3)'
  type: long
  inputBinding:
    prefix: --min_snps
- id: filter_percentage
  doc: 'Filter out taxa with more than this percentage of gaps (default: 25)'
  type: string
  inputBinding:
    prefix: --filter_percentage
- id: prefix
  doc: 'Add a prefix to the final output filenames (default: None)'
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: 'Number of threads to run with RAXML, but only if a PTHREADS version is available
    (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: converge_method
  doc: 'Criteria to use to know when to halt iterations (default: weighted_robinson_foulds)'
  type: string
  inputBinding:
    prefix: --converge_method
- id: min_window_size
  doc: 'Minimum window size (default: 100)'
  type: long
  inputBinding:
    prefix: --min_window_size
- id: max_window_size
  doc: 'Maximum window size (default: 10000)'
  type: long
  inputBinding:
    prefix: --max_window_size
- id: ra_xml_model
  doc: 'RAxML model (default: GTRCAT)'
  type: string
  inputBinding:
    prefix: --raxml_model
- id: remove_identical_sequences
  doc: 'Remove identical sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove_identical_sequences
outputs: []
cwlVersion: v1.1
baseCommand:
- run_gubbins.py
