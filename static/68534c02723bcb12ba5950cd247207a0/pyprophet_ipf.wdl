version 1.0

task PyprophetIpf {
  input {
    File? in
    File? out
    Boolean? ipf_ms_one_scoring
    Boolean? ipf_ms_two_scoring
    Boolean? ipf_h_zero
    Boolean? ipf_grouped_fdr
    Float? ipf_max_precursor_pep
    Float? ipf_max_peak_group_pep
    Float? ipf_max_precursor_peak_group_pep
    Float? ipf_max_transition_pep
  }
  command <<<
    pyprophet ipf \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--ipf_ms1_scoring" false="" ipf_ms_one_scoring} \
      ~{true="--ipf_ms2_scoring" false="" ipf_ms_two_scoring} \
      ~{true="--ipf_h0" false="" ipf_h_zero} \
      ~{true="--ipf_grouped_fdr" false="" ipf_grouped_fdr} \
      ~{if defined(ipf_max_precursor_pep) then ("--ipf_max_precursor_pep " +  '"' + ipf_max_precursor_pep + '"') else ""} \
      ~{if defined(ipf_max_peak_group_pep) then ("--ipf_max_peakgroup_pep " +  '"' + ipf_max_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_precursor_peak_group_pep) then ("--ipf_max_precursor_peakgroup_pep " +  '"' + ipf_max_precursor_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_transition_pep) then ("--ipf_max_transition_pep " +  '"' + ipf_max_transition_pep + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    ipf_ms_one_scoring: "/ --no-ipf_ms1_scoring Use MS1 precursor data for IPF.  [default: True]"
    ipf_ms_two_scoring: "/ --no-ipf_ms2_scoring Use MS2 precursor data for IPF.  [default: True]"
    ipf_h_zero: "/ --no-ipf_h0          Include possibility that peak groups are not covered by peptidoform space.  [default: True]"
    ipf_grouped_fdr: "/ --no-ipf_grouped_fdr [Experimental] Compute grouped FDR instead of pooled FDR to better support data where peak groups are evaluated to originate from very heterogeneous numbers of peptidoforms. [default: False]"
    ipf_max_precursor_pep: "Maximum PEP to consider scored precursors in IPF.  [default: 0.7]"
    ipf_max_peak_group_pep: "Maximum PEP to consider scored peak groups in IPF.  [default: 0.7]"
    ipf_max_precursor_peak_group_pep: "Maximum BHM layer 1 integrated precursor peakgroup PEP to consider in IPF.  [default: 0.4]"
    ipf_max_transition_pep: "Maximum PEP to consider scored transitions in IPF.  [default: 0.6]"
  }
}