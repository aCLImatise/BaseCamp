class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/psp_gen.cwl
inputs:
- id: min_w
  doc: 'minimum width of motif to consider default: 4'
  type: string
  inputBinding:
    prefix: -minw
- id: max_w
  doc: 'maximum width of motif to consider default: 20'
  type: string
  inputBinding:
    prefix: -maxw
- id: dna
  doc: use DNA alphabet; this is the default
  type: boolean
  inputBinding:
    prefix: -dna
- id: protein
  doc: use protein alphabet
  type: boolean
  inputBinding:
    prefix: -protein
- id: rna
  doc: use RNA alphabet
  type: boolean
  inputBinding:
    prefix: -rna
- id: alph
  doc: use the alphabet defined in the file
  type: File
  inputBinding:
    prefix: -alph
- id: triples
  doc: 'use spaced triples for matches default: do exact matches of w-mers'
  type: boolean
  inputBinding:
    prefix: -triples
- id: fixed_start
  doc: 'for triples, anchor the start when scoring triples of width < w default: allow
    start to move'
  type: boolean
  inputBinding:
    prefix: -fixedstart
- id: equiv
  doc: specifiy sets of symbols that should be considered equalivent; sets should
    be separated with a '-', unless the alphabet contains a dash in which case the
    option may be specified multiple times; eg. for protein -equiv "IVL-HKR" means
    treat all occurrences of I, V or L (or any of their aliases in the alphabet) as
    the same and all occurrences of H, K, R as the same
  type: string
  inputBinding:
    prefix: -equiv
- id: rev_comp
  doc: 'count reverse complements in computing scores default: only count forward
    matches'
  type: boolean
  inputBinding:
    prefix: -revcomp
- id: scale_min
  doc: 'scale scores to mimumum <number> default: 0.1 or 1-scalemax if set'
  type: string
  inputBinding:
    prefix: -scalemin
- id: scale_max
  doc: 'scale scores to maximum of <number> default: 0.9 or 1-scalemin if set'
  type: string
  inputBinding:
    prefix: -scalemax
- id: max_range
  doc: instead of choosing W with maximum score choose W with maximum difference between
    maximum and minimum scores
  type: boolean
  inputBinding:
    prefix: -maxrange
- id: raw
  doc: output scores instead of priors
  type: boolean
  inputBinding:
    prefix: -raw
- id: report_scores
  doc: 'report pos and neg file names, min and max scores, min and max w : tab-separated
    to STDERR'
  type: boolean
  inputBinding:
    prefix: -reportscores
- id: verbose
  doc: 'send stats to stderr reporting frequency of each score default: do not report
    statistics'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: pos
  doc: sequences likely to contain binding sites
  type: File
  inputBinding:
    prefix: -pos
- id: neg
  doc: sequences unlikely to contain binding sites
  type: File
  inputBinding:
    prefix: -neg
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- psp-gen
