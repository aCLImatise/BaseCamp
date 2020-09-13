class: CommandLineTool
id: ../../../pvacseq_coverage_filter.cwl
inputs:
- id: in_normal_cov
  doc: "Normal Coverage Cutoff. Sites above this cutoff will\nbe considered. Default:\
    \ 5"
  type: long
  inputBinding:
    prefix: --normal-cov
- id: in_t_dna_cov
  doc: "Tumor DNA Coverage Cutoff. Sites above this cutoff\nwill be considered. Default:\
    \ 10"
  type: long
  inputBinding:
    prefix: --tdna-cov
- id: in_trna_cov
  doc: "Tumor RNA Coverage Cutoff. Sites above this cutoff\nwill be considered. Default:\
    \ 10"
  type: long
  inputBinding:
    prefix: --trna-cov
- id: in_normal_vaf
  doc: "Normal VAF Cutoff. Sites BELOW this cutoff in normal\nwill be considered.\
    \ Default: 2"
  type: long
  inputBinding:
    prefix: --normal-vaf
- id: in_t_dna_vaf
  doc: "Tumor DNA VAF Cutoff. Sites above this cutoff will be\nconsidered. Default:\
    \ 40"
  type: long
  inputBinding:
    prefix: --tdna-vaf
- id: in_trna_vaf
  doc: "Tumor RNA VAF Cutoff. Sites above this cutoff will be\nconsidered. Default:\
    \ 40"
  type: long
  inputBinding:
    prefix: --trna-vaf
- id: in_expn_val
  doc: "Gene and Transcript Expression cutoff. Sites above\nthis cutoff will be consideredDefault:\
    \ 1\n"
  type: long
  inputBinding:
    prefix: --expn-val
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvacseq
- coverage_filter
