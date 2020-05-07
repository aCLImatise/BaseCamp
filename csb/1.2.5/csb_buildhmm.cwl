class: CommandLineTool
id: csb_buildhmm.cwl
inputs:
- id: query
  doc: input sequence (FASTA or PDB file)
  type: string
  inputBinding:
    position: 0
- id: query_id
  doc: ID of the query, in PDB-like format (accessionCHAIN).Used for naming the output
    files. Also, if the input is a PDB file with multiple chains, CHAIN is used to
    pull the required chain from the file.
  type: string
  inputBinding:
    prefix: --query-id
- id: tk_root
  doc: path to the ToolkitRoot folder in your HHsuite setup (default=/ebio/abt1_toolkit/share/wye)
  type: string
  inputBinding:
    prefix: --tk-root
- id: database
  doc: custom HHblits database; if not defined, toolkit's unirpto20 will be used
  type: string
  inputBinding:
    prefix: --database
- id: tk_config
  doc: path to a folder containing custom HHsuite configs (e.g. HHPaths.pm) (default=.)
  type: string
  inputBinding:
    prefix: --tk-config
- id: cpu
  doc: maximum degree of parallelism (default=1)
  type: string
  inputBinding:
    prefix: --cpu
- id: no_ss
  doc: do not include secondary structure (default=False)
  type: boolean
  inputBinding:
    prefix: --no-ss
- id: no_pseudo
  doc: do not add emission and transition pseudocounts (default=False)
  type: boolean
  inputBinding:
    prefix: --no-pseudo
- id: no_calibration
  doc: do not calibrate the profile (default=False)
  type: boolean
  inputBinding:
    prefix: --no-calibration
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-buildhmm
