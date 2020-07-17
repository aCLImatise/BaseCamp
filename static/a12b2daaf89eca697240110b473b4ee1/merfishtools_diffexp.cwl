class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merfishtools_diffexp.cwl
inputs:
- id: max_null_log_two_fc
  doc: Maximum absolute log2 fold change considered as no differential expression
    [1.0].
  type: double
  inputBinding:
    prefix: --max-null-log2fc
- id: pseudo_counts
  doc: Pseudocounts to add to means before fold change calculation [1.0].
  type: double
  inputBinding:
    prefix: --pseudocounts
- id: cdf
  doc: Path to write CDFs of log2 fold changes to.
  type: File
  inputBinding:
    prefix: --cdf
- id: threads
  doc: Number of threads to use.
  type: long
  inputBinding:
    prefix: --threads
- id: group_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: group_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- diffexp
