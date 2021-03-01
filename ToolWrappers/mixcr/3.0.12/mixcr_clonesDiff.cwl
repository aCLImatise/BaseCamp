class: CommandLineTool
id: mixcr_clonesDiff.cwl
inputs:
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_use_c_gene
  doc: "Use C gene in clone comparison (include it as a clone key along with a clone\n\
    sequence)."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_use_j_gene
  doc: "Use J gene in clone comparison (include it as a clone key along with a clone\n\
    sequence)."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_use_v_gene
  doc: "Use V gene in clone comparison (include it as a clone key along with a clone\n\
    sequence).\n"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_cf_jv
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -cfjv
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_clones_diff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_in_two
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_report
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- clonesDiff
