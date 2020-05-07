class: CommandLineTool
id: enrichm_enrichment.cwl
inputs:
- id: log
  doc: Output logging information to this file.
  type: string
  inputBinding:
    prefix: --log
- id: verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: annotate_output
  doc: Output directory provided by enrichm annotate
  type: string
  inputBinding:
    prefix: --annotate_output
- id: metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: string
  inputBinding:
    prefix: --metadata
- id: annotation_matrix
  doc: Annotation matrix to compare.
  type: string
  inputBinding:
    prefix: --annotation_matrix
- id: abundance
  doc: Genome abundance matrix.
  type: string
  inputBinding:
    prefix: --abundance
- id: abundance_metadata
  doc: Metadata grouping abundance samples.
  type: string
  inputBinding:
    prefix: --abundance_metadata
- id: transcriptome
  doc: Genome abundance matrix.
  type: string
  inputBinding:
    prefix: --transcriptome
- id: transcriptome_metadata
  doc: Metadata grouping abundance samples.
  type: string
  inputBinding:
    prefix: --transcriptome_metadata
- id: batch_file
  doc: metadata file to compare with.
  type: string
  inputBinding:
    prefix: --batchfile
- id: pval_cut_off
  doc: Only output results with a p-value below a this cutoff (default=0.05).
  type: string
  inputBinding:
    prefix: --pval_cutoff
- id: proportions_cut_off
  doc: Proportion enrichment cutoff.
  type: string
  inputBinding:
    prefix: --proportions_cutoff
- id: threshold
  doc: The threshold to control for in false discovery rate of familywise error rate.
  type: string
  inputBinding:
    prefix: --threshold
- id: multi_test_correction
  doc: 'The form of mutiple test correction to use. Uses the statsmodel module and
    consequently has all of its options. Default: Benjamini-Hochberg FDR (fdr_bh)  Options:
    Bonferroni (b)  Sidak (s)  Holm (h)  Holm-Sidak (hs)  Simes-Hochberg (sh)  Hommel
    (ho)  FDR Benjamini-Yekutieli (fdr_by)  FDR 2-stage Benjamini-Hochberg (fdr_tsbh)  FDR
    2-stage Benjamini-Krieger-Yekutieli (fdr_tsbky)  FDR adaptive Gavrilov-Benjamini-Sarkar
    (fdr_gbs))'
  type: string
  inputBinding:
    prefix: --multi_test_correction
- id: processes
  doc: Number of processes to use for enrichment.
  type: string
  inputBinding:
    prefix: --processes
- id: allow_negative_values
  doc: Allow negative values in input matrix.
  type: boolean
  inputBinding:
    prefix: --allow_negative_values
- id: ko
  doc: Compare KO ids (annotated with DIAMOND)
  type: boolean
  inputBinding:
    prefix: --ko
- id: ko_hmm
  doc: Compare KO ids (annotated with HMMs)
  type: boolean
  inputBinding:
    prefix: --ko_hmm
- id: pfam
  doc: Compare Pfam ids
  type: boolean
  inputBinding:
    prefix: --pfam
- id: tigr_fam
  doc: Compare TIGRFAM ids
  type: boolean
  inputBinding:
    prefix: --tigrfam
- id: cluster
  doc: Compare cluster ids
  type: boolean
  inputBinding:
    prefix: --cluster
- id: ortholog
  doc: Compare ortholog ids
  type: boolean
  inputBinding:
    prefix: --ortholog
- id: ca_zy
  doc: Compare dbCAN ids
  type: boolean
  inputBinding:
    prefix: --cazy
- id: ec
  doc: Compare EC ids
  type: boolean
  inputBinding:
    prefix: --ec
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- enrichment
