class: CommandLineTool
id: ../../../merfishtools_multidiffexp.cwl
inputs:
- id: in_max_null_cv
  doc: Maximum coefficient of variation (CV) considered as no differential expression
    [0.5].
  type: double
  inputBinding:
    prefix: --max-null-cv
- id: in_pseudo_counts
  doc: Pseudocounts to add to means before CV calculation [1.0].
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: in_cdf
  doc: Path to write CDFs of CVs to.
  type: File
  inputBinding:
    prefix: --cdf
- id: in_threads
  doc: Number of threads to use.
  type: long
  inputBinding:
    prefix: --threads
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merfishtools
- multidiffexp
