class: CommandLineTool
id: oncogemini_roh.cwl
inputs:
- id: in_min_snps
  doc: "Minimum number of homozygous snps expected in a run\n(def. 25)"
  type: long?
  inputBinding:
    prefix: --min-snps
- id: in_min_total_depth
  doc: "The minimum overall sequencing depth requiredfor a SNP\nto be considered (def\
    \ = 20)."
  type: long?
  inputBinding:
    prefix: --min-total-depth
- id: in_min_gt_depth
  doc: "The minimum required sequencing depth underlying a\ngiven sample's genotypefor\
    \ a SNP to be considered (def\n= 0)."
  type: long?
  inputBinding:
    prefix: --min-gt-depth
- id: in_min_size
  doc: Minimum run size in base pairs (def. 100000)
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_max_he_ts
  doc: Maximum number of allowed hets in the run (def. 1)
  type: long?
  inputBinding:
    prefix: --max-hets
- id: in_max_unknowns
  doc: Maximum number of allowed unknowns in the run (def. 3)
  type: long?
  inputBinding:
    prefix: --max-unknowns
- id: in_comma_separated_list
  doc: "Comma separated list of samples to screen for ROHs.\ne.g S120,S450\n"
  type: long?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- roh
