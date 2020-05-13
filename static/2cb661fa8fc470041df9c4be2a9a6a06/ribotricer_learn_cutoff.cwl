class: CommandLineTool
id: ribotricer_learn_cutoff.cwl
inputs:
- id: ribo_bams
  doc: Path(s) to Ribo-seq BAM file separated by comma
  type: string
  inputBinding:
    prefix: --ribo_bams
- id: rna_bams
  doc: Path(s) to RNA-seq BAM file separated by comma
  type: string
  inputBinding:
    prefix: --rna_bams
- id: ribo_t_svs
  doc: Path(s) to Ribo-seq *_translating_ORFs.tsv file separated by comma
  type: string
  inputBinding:
    prefix: --ribo_tsvs
- id: rna_t_svs
  doc: Path(s) to RNA-seq *_translating_ORFs.tsv file separated by comma
  type: string
  inputBinding:
    prefix: --rna_tsvs
- id: ribot_ricer_index
  doc: Path to the index file of ribotricer This file should be generated using ribotricer
    prepare-orfs (required for BAM input)
  type: string
  inputBinding:
    prefix: --ribotricer_index
- id: prefix
  doc: Prefix to output file
  type: string
  inputBinding:
    prefix: --prefix
- id: filter_by_tx_annotation
  doc: 'transcript_type to filter regions by [default: protein_coding]'
  type: string
  inputBinding:
    prefix: --filter_by_tx_annotation
- id: phase_score_cut_off
  doc: 'Phase score cutoff for determining active translation (required for BAM input)
    [default: 0.428571428571]'
  type: double
  inputBinding:
    prefix: --phase_score_cutoff
- id: min_valid_codons
  doc: 'Minimum number of codons with non-zero reads for determining active translation
    (required for BAM input)  [default: 5]'
  type: long
  inputBinding:
    prefix: --min_valid_codons
- id: sampling_ratio
  doc: 'Number of protein coding regions to sample per bootstrap  [default: 0.33]'
  type: double
  inputBinding:
    prefix: --sampling_ratio
- id: n_bootstraps
  doc: 'Number of bootstraps  [default: 20000]'
  type: long
  inputBinding:
    prefix: --n_bootstraps
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- learn-cutoff
