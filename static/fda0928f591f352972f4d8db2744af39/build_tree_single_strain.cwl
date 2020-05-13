class: CommandLineTool
id: build_tree_single_strain.py.cwl
inputs:
- id: ifn_alignments
  doc: The alignment file.
  type: string[]
  inputBinding:
    prefix: --ifn_alignments
- id: log_of_n
  doc: The log file.
  type: string
  inputBinding:
    prefix: --log_ofn
- id: nprocs
  doc: Number of processors.
  type: string
  inputBinding:
    prefix: --nprocs
- id: bootstrap_ra_xml
  doc: The number of runs for bootstraping when building the tree. Default 0.
  type: string
  inputBinding:
    prefix: --bootstrap_raxml
- id: verbose
  doc: Show all information. Default "not set".
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- build_tree_single_strain.py
