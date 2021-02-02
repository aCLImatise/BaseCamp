class: CommandLineTool
id: enrichm_enrichment.cwl
inputs:
- id: in_log
  doc: Output logging information to this file.
  type: File
  inputBinding:
    prefix: --log
- id: in_verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: in_annotate_output
  doc: Output directory provided by enrichm annotate
  type: Directory
  inputBinding:
    prefix: --annotate_output
- id: in_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: File
  inputBinding:
    prefix: --metadata
- id: in_annotation_matrix
  doc: Annotation matrix to compare.
  type: string
  inputBinding:
    prefix: --annotation_matrix
- id: in_abundance
  doc: Genome abundance matrix.
  type: string
  inputBinding:
    prefix: --abundance
- id: in_abundance_metadata
  doc: Metadata grouping abundance samples.
  type: string
  inputBinding:
    prefix: --abundance_metadata
- id: in_transcriptome
  doc: Genome abundance matrix.
  type: string
  inputBinding:
    prefix: --transcriptome
- id: in_transcriptome_metadata
  doc: Metadata grouping abundance samples.
  type: string
  inputBinding:
    prefix: --transcriptome_metadata
- id: in_batch_file
  doc: metadata file to compare with.
  type: File
  inputBinding:
    prefix: --batchfile
- id: in_pval_cut_off
  doc: Only output results with a p-value below a this cutoff (default=0.05).
  type: double
  inputBinding:
    prefix: --pval_cutoff
- id: in_proportions_cut_off
  doc: Proportion enrichment cutoff.
  type: string
  inputBinding:
    prefix: --proportions_cutoff
- id: in_threshold
  doc: The threshold to control for in false discovery rate of familywise error rate.
  type: string
  inputBinding:
    prefix: --threshold
- id: in_multi_test_correction
  doc: "The form of mutiple test correction to use. Uses the statsmodel module and\
    \ consequently has all of its options.\nDefault: Benjamini-Hochberg FDR (fdr_bh)\n\
    Options: Bonferroni (b)\nSidak (s)\nHolm (h)\nHolm-Sidak (hs)\nSimes-Hochberg\
    \ (sh)\nHommel (ho)\nFDR Benjamini-Yekutieli (fdr_by)\nFDR 2-stage Benjamini-Hochberg\
    \ (fdr_tsbh)\nFDR 2-stage Benjamini-Krieger-Yekutieli (fdr_tsbky)\nFDR adaptive\
    \ Gavrilov-Benjamini-Sarkar (fdr_gbs))"
  type: long
  inputBinding:
    prefix: --multi_test_correction
- id: in_processes
  doc: Number of processes to use for enrichment.
  type: long
  inputBinding:
    prefix: --processes
- id: in_allow_negative_values
  doc: Allow negative values in input matrix.
  type: boolean
  inputBinding:
    prefix: --allow_negative_values
- id: in_ko
  doc: Compare KO ids (annotated with DIAMOND)
  type: boolean
  inputBinding:
    prefix: --ko
- id: in_ko_hmm
  doc: Compare KO ids (annotated with HMMs)
  type: boolean
  inputBinding:
    prefix: --ko_hmm
- id: in_pfam
  doc: Compare Pfam ids
  type: boolean
  inputBinding:
    prefix: --pfam
- id: in_tigr_fam
  doc: Compare TIGRFAM ids
  type: boolean
  inputBinding:
    prefix: --tigrfam
- id: in_cluster
  doc: Compare cluster ids
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_ortholog
  doc: Compare ortholog ids
  type: boolean
  inputBinding:
    prefix: --ortholog
- id: in_ca_zy
  doc: Compare dbCAN ids
  type: boolean
  inputBinding:
    prefix: --cazy
- id: in_ec
  doc: Compare EC ids
  type: boolean
  inputBinding:
    prefix: --ec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file.
  type: File
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_annotate_output
  doc: Output directory provided by enrichm annotate
  type: Directory
  outputBinding:
    glob: $(inputs.in_annotate_output)
cwlVersion: v1.1
baseCommand:
- enrichm
- enrichment
