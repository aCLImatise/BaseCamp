class: CommandLineTool
id: pyprophet_export_compound.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: Output TSV/CSV (matrix, legacy_merged) file.
  type: File?
  inputBinding:
    prefix: --out
- id: in_format
  doc: "[matrix|legacy_merged|score_plots]\nExport format, either matrix, legacy_merged\n\
    (PyProphet) or score_plots format.\n[default: legacy_merged]"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_no_csv
  doc: "Export CSV instead of TSV file.  [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --no-csv
- id: in_max_rs_peak_group_q_value
  doc: "[format: matrix/legacy] Filter results to\nmaximum run-specific peak group-level\n\
    q-value.  [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --max_rs_peakgroup_qvalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output TSV/CSV (matrix, legacy_merged) file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- export-compound
