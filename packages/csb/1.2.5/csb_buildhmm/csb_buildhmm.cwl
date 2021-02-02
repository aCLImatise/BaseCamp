class: CommandLineTool
id: csb_buildhmm.cwl
inputs:
- id: in_query_id
  doc: "ID of the query, in PDB-like format\n(accessionCHAIN).Used for naming the\
    \ output files.\nAlso, if the input is a PDB file with multiple chains,\nCHAIN\
    \ is used to pull the required chain from the\nfile."
  type: File
  inputBinding:
    prefix: --query-id
- id: in_tk_root
  doc: "path to the ToolkitRoot folder in your HHsuite setup\n(default=/ebio/abt1_toolkit/share/wye)"
  type: File
  inputBinding:
    prefix: --tk-root
- id: in_database
  doc: "custom HHblits database; if not defined, toolkit's\nunirpto20 will be used"
  type: long
  inputBinding:
    prefix: --database
- id: in_tk_config
  doc: "path to a folder containing custom HHsuite configs\n(e.g. HHPaths.pm) (default=.)"
  type: File
  inputBinding:
    prefix: --tk-config
- id: in_cpu
  doc: maximum degree of parallelism (default=1)
  type: long
  inputBinding:
    prefix: --cpu
- id: in_no_ss
  doc: do not include secondary structure (default=False)
  type: boolean
  inputBinding:
    prefix: --no-ss
- id: in_no_pseudo
  doc: "do not add emission and transition pseudocounts\n(default=False)"
  type: boolean
  inputBinding:
    prefix: --no-pseudo
- id: in_no_calibration
  doc: do not calibrate the profile (default=False)
  type: boolean
  inputBinding:
    prefix: --no-calibration
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- csb-buildhmm
