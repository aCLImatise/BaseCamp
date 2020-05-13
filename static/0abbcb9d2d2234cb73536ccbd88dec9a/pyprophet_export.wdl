version 1.0

task PyprophetExport {
  input {
    File inIn
    File outOut
    Boolean formatFormat
    Boolean csvCsv
    Boolean transitionTransitionQuantification
    Float maxMaxTransitionPep
    Boolean ipfIpf
    Float ipfIpfMaxPeptIDoFormPep
    Float maxMaxRsPeakGroupQValue
    Boolean peptidePeptide
    Float maxMaxGlobalPeptideQValue
    Boolean proteinProtein
    Float maxMaxGlobalProteinQValue
  }
  command <<<
    pyprophet export \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--transition_quantification" false="" transitionTransitionQuantification} \
      ~{if defined(maxMaxTransitionPep) then ("--max_transition_pep " +  '"' + maxMaxTransitionPep + '"') else ""} \
      ~{true="--ipf" false="" ipfIpf} \
      ~{if defined(ipfIpfMaxPeptIDoFormPep) then ("--ipf_max_peptidoform_pep " +  '"' + ipfIpfMaxPeptIDoFormPep + '"') else ""} \
      ~{if defined(maxMaxRsPeakGroupQValue) then ("--max_rs_peakgroup_qvalue " +  '"' + maxMaxRsPeakGroupQValue + '"') else ""} \
      ~{true="--peptide" false="" peptidePeptide} \
      ~{if defined(maxMaxGlobalPeptideQValue) then ("--max_global_peptide_qvalue " +  '"' + maxMaxGlobalPeptideQValue + '"') else ""} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(maxMaxGlobalProteinQValue) then ("--max_global_protein_qvalue " +  '"' + maxMaxGlobalProteinQValue + '"') else ""}
  >>>
}