version 1.0

task PyprophetExport {
  input {
    File? in
    File? out
    Boolean? format
    Boolean? no_csv
    Boolean? no_transition_quantification
    Float? max_transition_pep
    Boolean? ipf
    Float? ipf_max_pept_i_do_form_pep
    Float? max_rs_peak_group_q_value
    Boolean? no_peptide
    Float? max_global_peptide_q_value
    Boolean? no_protein
    Float? max_global_protein_q_value
  }
  command <<<
    pyprophet export \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (no_csv) then "--no-csv" else ""} \
      ~{if (no_transition_quantification) then "--no-transition_quantification" else ""} \
      ~{if defined(max_transition_pep) then ("--max_transition_pep " +  '"' + max_transition_pep + '"') else ""} \
      ~{if (ipf) then "--ipf" else ""} \
      ~{if defined(ipf_max_pept_i_do_form_pep) then ("--ipf_max_peptidoform_pep " +  '"' + ipf_max_pept_i_do_form_pep + '"') else ""} \
      ~{if defined(max_rs_peak_group_q_value) then ("--max_rs_peakgroup_qvalue " +  '"' + max_rs_peak_group_q_value + '"') else ""} \
      ~{if (no_peptide) then "--no-peptide" else ""} \
      ~{if defined(max_global_peptide_q_value) then ("--max_global_peptide_qvalue " +  '"' + max_global_peptide_q_value + '"') else ""} \
      ~{if (no_protein) then "--no-protein" else ""} \
      ~{if defined(max_global_protein_q_value) then ("--max_global_protein_qvalue " +  '"' + max_global_protein_q_value + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0"
  }
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "Output TSV/CSV (matrix, legacy_split,\\nlegacy_merged) file."
    format: "[matrix|legacy_split|legacy_merged|score_plots]\\nExport format, either matrix,\\nlegacy_split/legacy_merged\\n(mProphet/PyProphet) or score_plots format.\\n[default: legacy_split]"
    no_csv: "Export CSV instead of TSV file.  [default:\\nFalse]"
    no_transition_quantification: "[format: legacy] Report aggregated\\ntransition-level quantification.  [default:\\nTrue]"
    max_transition_pep: "[format: legacy] Maximum PEP to retain\\nscored transitions for quantification\\n(requires transition-level scoring).\\n[default: 0.7]"
    ipf: "[peptidoform|augmented|disable]\\n[format: matrix/legacy] Should IPF results\\nbe reported if present? \\\"peptidoform\\\":\\nReport results on peptidoform-level,\\n\\\"augmented\\\": Augment OpenSWATH results with\\nIPF scores, \\\"disable\\\": Ignore IPF results\\n[default: peptidoform]"
    ipf_max_pept_i_do_form_pep: "[format: matrix/legacy] IPF: Filter results\\nto maximum run-specific peptidoform-level\\nPEP.  [default: 0.4]"
    max_rs_peak_group_q_value: "[format: matrix/legacy] Filter results to\\nmaximum run-specific peak group-level\\nq-value.  [default: 0.05]"
    no_peptide: "Append peptide-level error-rate estimates if"
    max_global_peptide_q_value: "[format: matrix/legacy] Filter results to\\nmaximum global peptide-level q-value.\\n[default: 0.01]"
    no_protein: "Append protein-level error-rate estimates if"
    max_global_protein_q_value: "[format: matrix/legacy] Filter results to\\nmaximum global protein-level q-value.\\n[default: 0.01]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}