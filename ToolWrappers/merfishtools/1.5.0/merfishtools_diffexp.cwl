class: CommandLineTool
id: merfishtools_diffexp.cwl
inputs:
- id: in_max_null_log_two_fc
  doc: Maximum absolute log2 fold change considered as no differential expression
    [1.0].
  type: double
  inputBinding:
    prefix: --max-null-log2fc
- id: in_pseudo_counts
  doc: Pseudocounts to add to means before fold change calculation [1.0].
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: in_cdf
  doc: Path to write CDFs of log2 fold changes to.
  type: File
  inputBinding:
    prefix: --cdf
- id: in_threads
  doc: Number of threads to use.
  type: long
  inputBinding:
    prefix: --threads
- id: in_group_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merfishtools
- diffexp
