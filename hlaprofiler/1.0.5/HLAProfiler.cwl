class: CommandLineTool
id: HLAProfiler.pl_predict_only.cwl
inputs:
- id: refine_only
  doc: Refines the allelle call by looking predicting the true allele sequence using
    observed reads and looking for a better match in the reference
  type: string
  inputBinding:
    position: 0
- id: predict_only
  doc: Reports if the observe reads support a novel allele sequence not found in the
    reference
  type: string
  inputBinding:
    position: 1
- id: refine_and_predict
  doc: Refines the allele call (-refine_only) and report novel alleles (-novel_only)
  type: string
  inputBinding:
    position: 2
- id: all
  doc: Refines the allele call (-refine_only) and report novel alleles (-novel_only),
    creates a profile for the refined/novel allele sequence and calculates prediction
    metrics.
  type: string
  inputBinding:
    position: 3
- id: none
  doc: Turns off refinement and novel allele prediction.
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- predict_only
