class: CommandLineTool
id: run_gubbins.py.cwl
inputs:
- id: in_out_group
  doc: "Outgroup name for rerooting. A list of comma separated\nnames can be used\
    \ if they form a clade (default: None)"
  type: string?
  inputBinding:
    prefix: --outgroup
- id: in_starting_tree
  doc: 'Starting tree (default: None)'
  type: string?
  inputBinding:
    prefix: --starting_tree
- id: in_use_time_stamp
  doc: 'Use a time stamp in file names (default: False)'
  type: boolean?
  inputBinding:
    prefix: --use_time_stamp
- id: in_verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_cleanup
  doc: 'Dont cleanup intermediate files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no_cleanup
- id: in_tree_builder
  doc: 'Application to use for tree building (default: raxml)'
  type: string?
  inputBinding:
    prefix: --tree_builder
- id: in_iterations
  doc: 'Maximum No. of iterations (default: 5)'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_min_snps
  doc: "Min SNPs to identify a recombination block (default:\n3)"
  type: long?
  inputBinding:
    prefix: --min_snps
- id: in_filter_percentage
  doc: "Filter out taxa with more than this percentage of gaps\n(default: 25)"
  type: long?
  inputBinding:
    prefix: --filter_percentage
- id: in_prefix
  doc: "Add a prefix to the final output filenames (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: "Number of threads to run with RAXML, but only if a\nPTHREADS version is available\
    \ (default: 1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_converge_method
  doc: "Criteria to use to know when to halt iterations\n(default: weighted_robinson_foulds)"
  type: string?
  inputBinding:
    prefix: --converge_method
- id: in_min_window_size
  doc: 'Minimum window size (default: 100)'
  type: long?
  inputBinding:
    prefix: --min_window_size
- id: in_max_window_size
  doc: 'Maximum window size (default: 10000)'
  type: long?
  inputBinding:
    prefix: --max_window_size
- id: in_ra_xml_model
  doc: 'RAxML model (default: GTRCAT)'
  type: string?
  inputBinding:
    prefix: --raxml_model
- id: in_remove_identical_sequences
  doc: "Remove identical sequences (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --remove_identical_sequences
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_gubbins.py
