class: CommandLineTool
id: pyprophet_export.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: "Output TSV/CSV (matrix, legacy_split,\nlegacy_merged) file."
  type: File?
  inputBinding:
    prefix: --out
- id: in_format
  doc: "[matrix|legacy_split|legacy_merged|score_plots]\nExport format, either matrix,\n\
    legacy_split/legacy_merged\n(mProphet/PyProphet) or score_plots format.\n[default:\
    \ legacy_split]"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_no_csv
  doc: "Export CSV instead of TSV file.  [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --no-csv
- id: in_no_transition_quantification
  doc: "[format: legacy] Report aggregated\ntransition-level quantification.  [default:\n\
    True]"
  type: boolean?
  inputBinding:
    prefix: --no-transition_quantification
- id: in_max_transition_pep
  doc: "[format: legacy] Maximum PEP to retain\nscored transitions for quantification\n\
    (requires transition-level scoring).\n[default: 0.7]"
  type: double?
  inputBinding:
    prefix: --max_transition_pep
- id: in_ipf
  doc: "[peptidoform|augmented|disable]\n[format: matrix/legacy] Should IPF results\n\
    be reported if present? \"peptidoform\":\nReport results on peptidoform-level,\n\
    \"augmented\": Augment OpenSWATH results with\nIPF scores, \"disable\": Ignore\
    \ IPF results\n[default: peptidoform]"
  type: boolean?
  inputBinding:
    prefix: --ipf
- id: in_ipf_max_pept_i_do_form_pep
  doc: "[format: matrix/legacy] IPF: Filter results\nto maximum run-specific peptidoform-level\n\
    PEP.  [default: 0.4]"
  type: double?
  inputBinding:
    prefix: --ipf_max_peptidoform_pep
- id: in_max_rs_peak_group_q_value
  doc: "[format: matrix/legacy] Filter results to\nmaximum run-specific peak group-level\n\
    q-value.  [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --max_rs_peakgroup_qvalue
- id: in_no_peptide
  doc: Append peptide-level error-rate estimates if
  type: boolean?
  inputBinding:
    prefix: --no-peptide
- id: in_max_global_peptide_q_value
  doc: "[format: matrix/legacy] Filter results to\nmaximum global peptide-level q-value.\n\
    [default: 0.01]"
  type: double?
  inputBinding:
    prefix: --max_global_peptide_qvalue
- id: in_no_protein
  doc: Append protein-level error-rate estimates if
  type: boolean?
  inputBinding:
    prefix: --no-protein
- id: in_max_global_protein_q_value
  doc: "[format: matrix/legacy] Filter results to\nmaximum global protein-level q-value.\n\
    [default: 0.01]"
  type: double?
  inputBinding:
    prefix: --max_global_protein_qvalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output TSV/CSV (matrix, legacy_split,\nlegacy_merged) file."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- pyprophet
- export
