class: CommandLineTool
id: ../../../traitar_evaluate.cwl
inputs:
- id: are_pt_ids
  doc: set if the gold standard phenotype are index via phenotype ids rather than
    accessions
  type: boolean
  inputBinding:
    prefix: --are_pt_ids
- id: phenotype_archive
  doc: need if gold standard uses an accession index for mapping
  type: string
  inputBinding:
    prefix: --phenotype_archive
- id: min_samples
  doc: minimum number of positive and negative samples to consider phenotypes for
    calculation of the macro accuracy
  type: long
  inputBinding:
    prefix: --min_samples
- id: trait_ar_pred_f
  doc: phenotype prediction matrix as return by Traitar
  type: string
  inputBinding:
    position: 0
- id: gold_standard_f
  doc: phenotype matrix with standard of truth
  type: string
  inputBinding:
    position: 1
- id: out
  doc: output directory
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- evaluate
