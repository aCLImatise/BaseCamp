class: CommandLineTool
id: merfishtools_multidiffexp_OPTIONS.cwl
inputs:
- id: max_null_cv
  doc: Maximum coefficient of variation (CV) considered as no differential expression
    [0.5].
  type: double
  inputBinding:
    prefix: --max-null-cv
- id: pseudo_counts
  doc: Pseudocounts to add to means before CV calculation [1.0].
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: cdf
  doc: Path to write CDFs of CVs to.
  type: File
  inputBinding:
    prefix: --cdf
- id: threads
  doc: Number of threads to use.
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- multidiffexp
- OPTIONS
