class: CommandLineTool
id: pyprophet_ipf.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: PyProphet output file.
  type: File
  inputBinding:
    prefix: --out
- id: ipf_ms1_scoring
  doc: '/ --no-ipf_ms1_scoring Use MS1 precursor data for IPF.  [default: True]'
  type: boolean
  inputBinding:
    prefix: --ipf_ms1_scoring
- id: ipf_ms2_scoring
  doc: '/ --no-ipf_ms2_scoring Use MS2 precursor data for IPF.  [default: True]'
  type: boolean
  inputBinding:
    prefix: --ipf_ms2_scoring
- id: ipf_h0
  doc: '/ --no-ipf_h0          Include possibility that peak groups are not covered
    by peptidoform space.  [default: True]'
  type: boolean
  inputBinding:
    prefix: --ipf_h0
- id: ipf_grouped_fdr
  doc: '/ --no-ipf_grouped_fdr [Experimental] Compute grouped FDR instead of pooled
    FDR to better support data where peak groups are evaluated to originate from very
    heterogeneous numbers of peptidoforms. [default: False]'
  type: boolean
  inputBinding:
    prefix: --ipf_grouped_fdr
- id: ipf_max_precursor_pep
  doc: 'Maximum PEP to consider scored precursors in IPF.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --ipf_max_precursor_pep
- id: ipf_max_peak_group_pep
  doc: 'Maximum PEP to consider scored peak groups in IPF.  [default: 0.7]'
  type: double
  inputBinding:
    prefix: --ipf_max_peakgroup_pep
- id: ipf_max_precursor_peak_group_pep
  doc: 'Maximum BHM layer 1 integrated precursor peakgroup PEP to consider in IPF.  [default:
    0.4]'
  type: double
  inputBinding:
    prefix: --ipf_max_precursor_peakgroup_pep
- id: ipf_max_transition_pep
  doc: 'Maximum PEP to consider scored transitions in IPF.  [default: 0.6]'
  type: double
  inputBinding:
    prefix: --ipf_max_transition_pep
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- ipf
