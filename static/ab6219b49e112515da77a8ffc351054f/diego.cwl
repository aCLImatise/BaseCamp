class: CommandLineTool
id: diego.py.cwl
inputs:
- id: table
  doc: table of splice junction supports per sample with gene information (created
    with pre_std.py, pre_star.py or pre_segemehl.py)
  type: string
  inputBinding:
    prefix: --table
- id: list
  doc: 'condition to sample relation in the format: condition tab-delimiter sampleName
    (you can specify a subset of the samples included in the table, however the sampleName
    has to be the same as used in table) (you can specify a label in the third column
    that is used (if present) when the clustering mode is executed)'
  type: string
  inputBinding:
    prefix: --list
- id: base_condition
  doc: specify base condition (direction of change between the two conditions)
  type: string
  inputBinding:
    prefix: --base_condition
- id: min_supp
  doc: min support per splice site (at least -d samples have to show this min support)(default:10)
  type: string
  inputBinding:
    prefix: --minsupp
- id: min_samples
  doc: min amount of samples showing in at least one of the junctions the min supp
    (default:3)
  type: string
  inputBinding:
    prefix: --minsamples
- id: significance_threshold
  doc: significance level alpha (default 0.01)
  type: string
  inputBinding:
    prefix: --significanceThreshold
- id: fold_change_threshold
  doc: abundance change threshold (default 1.0)
  type: string
  inputBinding:
    prefix: --foldchangeThreshold
- id: cluster
  doc: provide -e if clustering should be performed
  type: boolean
  inputBinding:
    prefix: --cluster
- id: den_do_gram
  doc: prefix specifying the dendogram plot
  type: string
  inputBinding:
    prefix: --dendogram
- id: random
  doc: provide -r if random seed should be used (not deterministic mode)
  type: boolean
  inputBinding:
    prefix: --random
outputs: []
cwlVersion: v1.1
baseCommand:
- diego.py
