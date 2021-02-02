class: CommandLineTool
id: traitar_evaluate.cwl
inputs:
- id: in_are_pt_ids
  doc: "set if the gold standard phenotype are index via\nphenotype ids rather than\
    \ accessions"
  type: boolean
  inputBinding:
    prefix: --are_pt_ids
- id: in_phenotype_archive
  doc: "need if gold standard uses an accession index for\nmapping"
  type: string
  inputBinding:
    prefix: --phenotype_archive
- id: in_min_samples
  doc: "minimum number of positive and negative samples to\nconsider phenotypes for\
    \ calculation of the macro\naccuracy\n"
  type: long
  inputBinding:
    prefix: --min_samples
- id: in_trait_ar_pred_f
  doc: phenotype prediction matrix as return by Traitar
  type: string
  inputBinding:
    position: 0
- id: in_gold_standard_f
  doc: phenotype matrix with standard of truth
  type: string
  inputBinding:
    position: 1
- id: in_out
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- evaluate
