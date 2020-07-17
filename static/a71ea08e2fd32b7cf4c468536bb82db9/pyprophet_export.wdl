version 1.0

task PyprophetExport {
  input {
    File? in
    File? out
    Boolean? format
    Boolean? csv
    Boolean? transition_quantification
    Float? max_transition_pep
    Boolean? ipf
    Float? ipf_max_pept_i_do_form_pep
    Float? max_rs_peak_group_q_value
    Boolean? peptide
    Float? max_global_peptide_q_value
    Boolean? protein
    Float? max_global_protein_q_value
  }
  command <<<
    pyprophet export \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--format" false="" format} \
      ~{true="--csv" false="" csv} \
      ~{true="--transition_quantification" false="" transition_quantification} \
      ~{if defined(max_transition_pep) then ("--max_transition_pep " +  '"' + max_transition_pep + '"') else ""} \
      ~{true="--ipf" false="" ipf} \
      ~{if defined(ipf_max_pept_i_do_form_pep) then ("--ipf_max_peptidoform_pep " +  '"' + ipf_max_pept_i_do_form_pep + '"') else ""} \
      ~{if defined(max_rs_peak_group_q_value) then ("--max_rs_peakgroup_qvalue " +  '"' + max_rs_peak_group_q_value + '"') else ""} \
      ~{true="--peptide" false="" peptide} \
      ~{if defined(max_global_peptide_q_value) then ("--max_global_peptide_qvalue " +  '"' + max_global_peptide_q_value + '"') else ""} \
      ~{true="--protein" false="" protein} \
      ~{if defined(max_global_protein_q_value) then ("--max_global_protein_qvalue " +  '"' + max_global_protein_q_value + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "Output TSV/CSV (matrix, legacy_split, legacy_merged) file."
    format: "[matrix|legacy_split|legacy_merged|score_plots] Export format, either matrix, legacy_split/legacy_merged (mProphet/PyProphet) or score_plots format. [default: legacy_split]"
    csv: "/ --no-csv                Export CSV instead of TSV file.  [default: False]"
    transition_quantification: "/ --no-transition_quantification [format: legacy] Report aggregated transition-level quantification.  [default: True]"
    max_transition_pep: "[format: legacy] Maximum PEP to retain scored transitions for quantification (requires transition-level scoring). [default: 0.7]"
    ipf: "[peptidoform|augmented|disable] [format: matrix/legacy] Should IPF results be reported if present? \"peptidoform\": Report results on peptidoform-level, \"augmented\": Augment OpenSWATH results with IPF scores, \"disable\": Ignore IPF results [default: peptidoform]"
    ipf_max_pept_i_do_form_pep: "[format: matrix/legacy] IPF: Filter results to maximum run-specific peptidoform-level PEP.  [default: 0.4]"
    max_rs_peak_group_q_value: "[format: matrix/legacy] Filter results to maximum run-specific peak group-level q-value.  [default: 0.05]"
    peptide: "/ --no-peptide        Append peptide-level error-rate estimates if available.  [default: True]"
    max_global_peptide_q_value: "[format: matrix/legacy] Filter results to maximum global peptide-level q-value. [default: 0.01]"
    protein: "/ --no-protein        Append protein-level error-rate estimates if available.  [default: True]"
    max_global_protein_q_value: "[format: matrix/legacy] Filter results to maximum global protein-level q-value. [default: 0.01]"
  }
}