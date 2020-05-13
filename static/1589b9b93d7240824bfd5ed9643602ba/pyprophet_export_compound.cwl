class: CommandLineTool
id: pyprophet_export_compound.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Output TSV/CSV (matrix, legacy_merged) file.
  type: File
  inputBinding:
    prefix: --out
- id: format
  doc: '[matrix|legacy_merged|score_plots] Export format, either matrix, legacy_merged
    (PyProphet) or score_plots format. [default: legacy_merged]'
  type: boolean
  inputBinding:
    prefix: --format
- id: csv
  doc: '/ --no-csv                Export CSV instead of TSV file.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --csv
- id: max_rs_peak_group_q_value
  doc: '[format: matrix/legacy] Filter results to maximum run-specific peak group-level
    q-value.  [default: 0.05]'
  type: double
  inputBinding:
    prefix: --max_rs_peakgroup_qvalue
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- export-compound
