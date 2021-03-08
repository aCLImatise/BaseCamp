version 1.0

task PyprophetIpf {
  input {
    File? in
    File? out
    Boolean? no_ipf_ms_one_scoring
    Boolean? no_ipf_ms_two_scoring
    Boolean? no_ipf_h_zero
    Boolean? no_ipf_grouped_fdr
    Float? ipf_max_precursor_pep
    Float? ipf_max_peak_group_pep
    Float? ipf_max_precursor_peak_group_pep
    Float? ipf_max_transition_pep
  }
  command <<<
    pyprophet ipf \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_ipf_ms_one_scoring) then "--no-ipf_ms1_scoring" else ""} \
      ~{if (no_ipf_ms_two_scoring) then "--no-ipf_ms2_scoring" else ""} \
      ~{if (no_ipf_h_zero) then "--no-ipf_h0" else ""} \
      ~{if (no_ipf_grouped_fdr) then "--no-ipf_grouped_fdr" else ""} \
      ~{if defined(ipf_max_precursor_pep) then ("--ipf_max_precursor_pep " +  '"' + ipf_max_precursor_pep + '"') else ""} \
      ~{if defined(ipf_max_peak_group_pep) then ("--ipf_max_peakgroup_pep " +  '"' + ipf_max_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_precursor_peak_group_pep) then ("--ipf_max_precursor_peakgroup_pep " +  '"' + ipf_max_precursor_peak_group_pep + '"') else ""} \
      ~{if defined(ipf_max_transition_pep) then ("--ipf_max_transition_pep " +  '"' + ipf_max_transition_pep + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0"
  }
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "PyProphet output file."
    no_ipf_ms_one_scoring: "Use MS1 precursor data for IPF.  [default:\\nTrue]"
    no_ipf_ms_two_scoring: "Use MS2 precursor data for IPF.  [default:\\nTrue]"
    no_ipf_h_zero: "Include possibility that peak groups are not\\ncovered by peptidoform space.  [default:\\nTrue]"
    no_ipf_grouped_fdr: "[Experimental] Compute grouped FDR instead\\nof pooled FDR to better support data where\\npeak groups are evaluated to originate from\\nvery heterogeneous numbers of peptidoforms.\\n[default: False]"
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