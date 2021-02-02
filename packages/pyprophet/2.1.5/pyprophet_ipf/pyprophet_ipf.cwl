class: CommandLineTool
id: ../../../pyprophet_ipf.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: PyProphet output file.
  type: File
  inputBinding:
    prefix: --out
- id: in_ipf_ms_one_scoring
  doc: "/ --no-ipf_ms1_scoring\nUse MS1 precursor data for IPF.  [default:\nTrue]"
  type: boolean
  inputBinding:
    prefix: --ipf_ms1_scoring
- id: in_ipf_ms_two_scoring
  doc: "/ --no-ipf_ms2_scoring\nUse MS2 precursor data for IPF.  [default:\nTrue]"
  type: boolean
  inputBinding:
    prefix: --ipf_ms2_scoring
- id: in_ipf_h_zero
  doc: "/ --no-ipf_h0          Include possibility that peak groups are not\ncovered\
    \ by peptidoform space.  [default:\nTrue]"
  type: boolean
  inputBinding:
    prefix: --ipf_h0
- id: in_ipf_grouped_fdr
  doc: "/ --no-ipf_grouped_fdr\n[Experimental] Compute grouped FDR instead\nof pooled\
    \ FDR to better support data where\npeak groups are evaluated to originate from\n\
    very heterogeneous numbers of peptidoforms.\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --ipf_grouped_fdr
- id: in_ipf_max_precursor_pep
  doc: Maximum PEP to consider scored precursors in
  type: double
  inputBinding:
    prefix: --ipf_max_precursor_pep
- id: in_ipf_max_peak_group_pep
  doc: "Maximum PEP to consider scored peak groups\nin IPF.  [default: 0.7]"
  type: double
  inputBinding:
    prefix: --ipf_max_peakgroup_pep
- id: in_ipf_max_precursor_peak_group_pep
  doc: "Maximum BHM layer 1 integrated precursor\npeakgroup PEP to consider in IPF.\
    \  [default:\n0.4]"
  type: double
  inputBinding:
    prefix: --ipf_max_precursor_peakgroup_pep
- id: in_ipf_max_transition_pep
  doc: "Maximum PEP to consider scored transitions\nin IPF.  [default: 0.6]"
  type: double
  inputBinding:
    prefix: --ipf_max_transition_pep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: PyProphet output file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pyprophet
- ipf
