class: CommandLineTool
id: computeCoverageStat.cwl
inputs:
- id: in_mandatory_path_g
  doc: Mandatory, path G to a gkpStore directory.
  type: File?
  inputBinding:
    prefix: -g
- id: in_mandatory_path_t
  doc: <v> Mandatory, path T to a tigStore, and version V.
  type: File?
  inputBinding:
    prefix: -t
- id: in_optional_assume_s
  doc: Optional, assume genome size S.
  type: long?
  inputBinding:
    prefix: -s
- id: in_recommended_prefix_output
  doc: Recommended, prefix for output files.
  type: string?
  inputBinding:
    prefix: -o
- id: in_update_tigstore_default
  doc: Do not update the tigStore (default = do update).
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_estimate_based_use
  doc: Do not estimate based on N50 (default = use N50).
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_be_leniant_require
  doc: Be leniant; don't require reads start at position zero.
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- computeCoverageStat
