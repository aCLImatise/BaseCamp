class: CommandLineTool
id: psp_gen.cwl
inputs:
- id: in_min_w
  doc: "minimum width of motif to consider\ndefault: 4"
  type: long?
  inputBinding:
    prefix: -minw
- id: in_max_w
  doc: "maximum width of motif to consider\ndefault: 20"
  type: long?
  inputBinding:
    prefix: -maxw
- id: in_dna
  doc: use DNA alphabet; this is the default
  type: boolean?
  inputBinding:
    prefix: -dna
- id: in_protein
  doc: use protein alphabet
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_rna
  doc: use RNA alphabet
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_alph
  doc: use the alphabet defined in the file
  type: File?
  inputBinding:
    prefix: -alph
- id: in_triples
  doc: "use spaced triples for matches\ndefault: do exact matches of w-mers"
  type: boolean?
  inputBinding:
    prefix: -triples
- id: in_fixed_start
  doc: "for triples, anchor the start when scoring\ntriples of width < w\ndefault:\
    \ allow start to move"
  type: boolean?
  inputBinding:
    prefix: -fixedstart
- id: in_equiv
  doc: "specifiy sets of symbols that should be considered\nequalivent; sets should\
    \ be separated with a '-',\nunless the alphabet contains a dash in which case\n\
    the option may be specified multiple times;\neg. for protein -equiv \"IVL-HKR\"\
    \ means treat all\noccurrences of I, V or L (or any of their aliases\nin the alphabet)\
    \ as the same and all occurrences of\nH, K, R as the same"
  type: string?
  inputBinding:
    prefix: -equiv
- id: in_rev_comp
  doc: "count reverse complements in computing scores\ndefault: only count forward\
    \ matches"
  type: boolean?
  inputBinding:
    prefix: -revcomp
- id: in_scale_min
  doc: "scale scores to mimumum <number>\ndefault: 0.1 or 1-scalemax if set"
  type: long?
  inputBinding:
    prefix: -scalemin
- id: in_scale_max
  doc: "scale scores to maximum of <number>\ndefault: 0.9 or 1-scalemin if set"
  type: long?
  inputBinding:
    prefix: -scalemax
- id: in_max_range
  doc: "instead of choosing W with maximum score choose W with\nmaximum difference\
    \ between maximum and minimum scores"
  type: boolean?
  inputBinding:
    prefix: -maxrange
- id: in_raw
  doc: output scores instead of priors
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_report_scores
  doc: "report pos and neg file names, min and max scores,\nmin and max w : tab-separated\
    \ to STDERR"
  type: boolean?
  inputBinding:
    prefix: -reportscores
- id: in_verbose
  doc: send stats to stderr reporting frequency of each
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_pos
  doc: sequences likely to contain binding sites
  type: File?
  inputBinding:
    prefix: -pos
- id: in_neg
  doc: sequences unlikely to contain binding sites
  type: File?
  inputBinding:
    prefix: -neg
- id: in_score
  doc: 'default: do not report statistics'
  type: string
  inputBinding:
    position: 0
- id: in_copyright
  doc: (2009) The University of Queensland
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- psp-gen
