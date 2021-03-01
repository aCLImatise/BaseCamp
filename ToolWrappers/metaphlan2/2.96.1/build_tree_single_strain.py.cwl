class: CommandLineTool
id: build_tree_single_strain.py.cwl
inputs:
- id: in_ifn_alignments
  doc: The alignment file.
  type: string[]
  inputBinding:
    prefix: --ifn_alignments
- id: in_log_of_n
  doc: The log file.
  type: File?
  inputBinding:
    prefix: --log_ofn
- id: in_nprocs
  doc: Number of processors.
  type: long?
  inputBinding:
    prefix: --nprocs
- id: in_bootstrap_ra_xml
  doc: "The number of runs for bootstraping when building the\ntree. Default 0."
  type: long?
  inputBinding:
    prefix: --bootstrap_raxml
- id: in_verbose
  doc: Show all information. Default "not set".
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- build_tree_single_strain.py
