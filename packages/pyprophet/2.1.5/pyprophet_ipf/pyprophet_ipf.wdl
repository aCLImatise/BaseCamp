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
      ~{if (ipf_ms_one_scoring) then "--ipf_ms1_scoring" else ""} \
      ~{if (ipf_ms_two_scoring) then "--ipf_ms2_scoring" else ""} \
      ~{if (ipf_h_zero) then "--ipf_h0" else ""} \
      ~{if (ipf_grouped_fdr) then "--ipf_grouped_fdr" else ""} \
      ~{if defined(ipf_max_precursor_pep) then ("--ipf_max_precursor_pep " +  '"' + ipf_max_precursor_pep + '"') else ""} \
      ~{if defined(ipf_max_peak_group_pep) then ("--ipf_max_peakgroup_pep " +  '"' + ipf_max_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_precursor_peak_group_pep) then ("--ipf_max_precursor_peakgroup_pep " +  '"' + ipf_max_precursor_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_transition_pep) then ("--ipf_max_transition_pep " +  '"' + ipf_max_transition_pep + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    ipf_ms_one_scoring: "/ --no-ipf_ms1_scoring\\nUse MS1 precursor data for IPF.  [default:\\nTrue]"
    ipf_ms_two_scoring: "/ --no-ipf_ms2_scoring\\nUse MS2 precursor data for IPF.  [default:\\nTrue]"
    ipf_h_zero: "/ --no-ipf_h0          Include possibility that peak groups are not\\ncovered by peptidoform space.  [default:\\nTrue]"
    ipf_grouped_fdr: "/ --no-ipf_grouped_fdr\\n[Experimental] Compute grouped FDR instead\\nof pooled FDR to better support data where\\npeak groups are evaluated to originate from\\nvery heterogeneous numbers of peptidoforms.\\n[default: False]"
    ipf_max_precursor_pep: "Maximum PEP to consider scored precursors in"
    ipf_max_peak_group_pep: "Maximum PEP to consider scored peak groups\\nin IPF.  [default: 0.7]"
    ipf_max_precursor_peak_group_pep: "Maximum BHM layer 1 integrated precursor\\npeakgroup PEP to consider in IPF.  [default:\\n0.4]"
    ipf_max_transition_pep: "Maximum PEP to consider scored transitions\\nin IPF.  [default: 0.6]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}