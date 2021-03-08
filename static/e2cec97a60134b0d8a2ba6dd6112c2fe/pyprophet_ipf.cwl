class: CommandLineTool
id: pyprophet_ipf.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: PyProphet output file.
  type: File?
  inputBinding:
    prefix: --out
- id: in_no_ipf_ms_one_scoring
  doc: "Use MS1 precursor data for IPF.  [default:\nTrue]"
  type: boolean?
  inputBinding:
    prefix: --no-ipf_ms1_scoring
- id: in_no_ipf_ms_two_scoring
  doc: "Use MS2 precursor data for IPF.  [default:\nTrue]"
  type: boolean?
  inputBinding:
    prefix: --no-ipf_ms2_scoring
- id: in_no_ipf_h_zero
  doc: "Include possibility that peak groups are not\ncovered by peptidoform space.\
    \  [default:\nTrue]"
  type: boolean?
  inputBinding:
    prefix: --no-ipf_h0
- id: in_no_ipf_grouped_fdr
  doc: "[Experimental] Compute grouped FDR instead\nof pooled FDR to better support\
    \ data where\npeak groups are evaluated to originate from\nvery heterogeneous\
    \ numbers of peptidoforms.\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --no-ipf_grouped_fdr
- id: in_ipf_max_precursor_pep
  doc: Maximum PEP to consider scored precursors in
  type: double?
  inputBinding:
    prefix: --ipf_max_precursor_pep
- id: in_ipf_max_peak_group_pep
  doc: "Maximum PEP to consider scored peak groups\nin IPF.  [default: 0.7]"
  type: double?
  inputBinding:
    prefix: --ipf_max_peakgroup_pep
- id: in_ipf_max_precursor_peak_group_pep
  doc: "Maximum BHM layer 1 integrated precursor\npeakgroup PEP to consider in IPF.\
    \  [default:\n0.4]"
  type: double?
  inputBinding:
    prefix: --ipf_max_precursor_peakgroup_pep
- id: in_ipf_max_transition_pep
  doc: "Maximum PEP to consider scored transitions\nin IPF.  [default: 0.6]"
  type: double?
  inputBinding:
    prefix: --ipf_max_transition_pep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: PyProphet output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- pyprophet
- ipf
