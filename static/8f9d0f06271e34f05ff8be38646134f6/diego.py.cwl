class: CommandLineTool
id: diego.py.cwl
inputs:
- id: in_table
  doc: "table of splice junction supports per sample with gene\ninformation (created\
    \ with pre_std.py, pre_star.py or\npre_segemehl.py)"
  type: string?
  inputBinding:
    prefix: --table
- id: in_list
  doc: "condition to sample relation in the format: condition\ntab-delimiter sampleName\
    \ (you can specify a subset of\nthe samples included in the table, however the\n\
    sampleName has to be the same as used in table) (you\ncan specify a label in the\
    \ third column that is used\n(if present) when the clustering mode is executed)"
  type: string?
  inputBinding:
    prefix: --list
- id: in_base_condition
  doc: "specify base condition (direction of change between\nthe two conditions)"
  type: string?
  inputBinding:
    prefix: --base_condition
- id: in_min_supp
  doc: "min support per splice site (at least -d samples have\nto show this min support)(default:10)"
  type: long?
  inputBinding:
    prefix: --minsupp
- id: in_min_samples
  doc: "min amount of samples showing in at least one of the\njunctions the min supp\
    \ (default:3)"
  type: long?
  inputBinding:
    prefix: --minsamples
- id: in_significance_threshold
  doc: significance level alpha (default 0.01)
  type: double?
  inputBinding:
    prefix: --significanceThreshold
- id: in_fold_change_threshold
  doc: abundance change threshold (default 1.0)
  type: double?
  inputBinding:
    prefix: --foldchangeThreshold
- id: in_cluster
  doc: provide -e if clustering should be performed
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_den_do_gram
  doc: prefix specifying the dendogram plot
  type: string?
  inputBinding:
    prefix: --dendogram
- id: in_random
  doc: "provide -r if random seed should be used (not\ndeterministic mode)\n"
  type: boolean?
  inputBinding:
    prefix: --random
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- diego.py
