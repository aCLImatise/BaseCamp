class: CommandLineTool
id: pyprophet_export.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Output TSV/CSV (matrix, legacy_split, legacy_merged) file.
  type: File
  inputBinding:
    prefix: --out
- id: format
  doc: '[matrix|legacy_split|legacy_merged|score_plots] Export format, either matrix,
    legacy_split/legacy_merged (mProphet/PyProphet) or score_plots format. [default:
    legacy_split]'
  type: boolean
  inputBinding:
    prefix: --format
- id: csv
  doc: '/ --no-csv                Export CSV instead of TSV file.  [default: False]'
  type: boolean
  inputBinding:
    prefix: --csv
- id: transition_quantification
  doc: '/ --no-transition_quantification [format: legacy] Report aggregated transition-level
    quantification.  [default: True]'
  type: boolean
  inputBinding:
    prefix: --transition_quantification
- id: max_transition_pep
  doc: '[format: legacy] Maximum PEP to retain scored transitions for quantification
    (requires transition-level scoring). [default: 0.7]'
  type: double
  inputBinding:
    prefix: --max_transition_pep
- id: ipf
  doc: '[peptidoform|augmented|disable] [format: matrix/legacy] Should IPF results
    be reported if present? "peptidoform": Report results on peptidoform-level, "augmented":
    Augment OpenSWATH results with IPF scores, "disable": Ignore IPF results [default:
    peptidoform]'
  type: boolean
  inputBinding:
    prefix: --ipf
- id: ipf_max_pept_i_do_form_pep
  doc: '[format: matrix/legacy] IPF: Filter results to maximum run-specific peptidoform-level
    PEP.  [default: 0.4]'
  type: double
  inputBinding:
    prefix: --ipf_max_peptidoform_pep
- id: max_rs_peak_group_q_value
  doc: '[format: matrix/legacy] Filter results to maximum run-specific peak group-level
    q-value.  [default: 0.05]'
  type: double
  inputBinding:
    prefix: --max_rs_peakgroup_qvalue
- id: peptide
  doc: '/ --no-peptide        Append peptide-level error-rate estimates if available.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --peptide
- id: max_global_peptide_q_value
  doc: '[format: matrix/legacy] Filter results to maximum global peptide-level q-value.
    [default: 0.01]'
  type: double
  inputBinding:
    prefix: --max_global_peptide_qvalue
- id: protein
  doc: '/ --no-protein        Append protein-level error-rate estimates if available.  [default:
    True]'
  type: boolean
  inputBinding:
    prefix: --protein
- id: max_global_protein_q_value
  doc: '[format: matrix/legacy] Filter results to maximum global protein-level q-value.
    [default: 0.01]'
  type: double
  inputBinding:
    prefix: --max_global_protein_qvalue
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- export
