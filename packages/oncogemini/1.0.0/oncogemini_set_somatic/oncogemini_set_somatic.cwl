class: CommandLineTool
id: oncogemini_set_somatic.cwl
inputs:
- id: in_mind_p
  doc: Minimum depth required in all samples (default is 0)
  type: long?
  inputBinding:
    prefix: --minDP
- id: in_ming_q
  doc: "Minimum genotype quality required in all samples\n(default is 0)"
  type: long?
  inputBinding:
    prefix: --minGQ
- id: in_norma_f
  doc: "The maximum frequency of the alternate allele in the\nnormal sample (default\
    \ 0)."
  type: long?
  inputBinding:
    prefix: --normAF
- id: in_norm_count
  doc: "The maximum count of the alternate allele in the\nnormal sample (default 0)."
  type: long?
  inputBinding:
    prefix: --normCount
- id: in_norm_dp
  doc: "The minimum depth allowed in the normal sample to\nbelieve somatic (default\
    \ 0)."
  type: long?
  inputBinding:
    prefix: --normDP
- id: in_tuma_f
  doc: "The minimum frequency of the alternate allele in the\ntumor sample (default\
    \ 0)."
  type: long?
  inputBinding:
    prefix: --tumAF
- id: in_tum_count
  doc: "The minimum count of the alternate allele in the tumor\nsample (default 0)."
  type: long?
  inputBinding:
    prefix: --tumCount
- id: in_tu_mdp
  doc: "The minimum depth allowed in the tumor sample to\nbelieve somatic (default\
    \ 0)."
  type: long?
  inputBinding:
    prefix: --tumDP
- id: in_purity
  doc: "Using purity estimates in sample manifest file, make\ncorrections to AF to\
    \ be used"
  type: boolean?
  inputBinding:
    prefix: --purity
- id: in_dry_run
  doc: "Don't set the is_somatic flag, just report what\n_would_ be set. For testing\
    \ parameters.\n"
  type: boolean?
  inputBinding:
    prefix: --dry-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oncogemini
- set_somatic
