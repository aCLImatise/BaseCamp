class: CommandLineTool
id: ribotricer_learn_cutoff.cwl
inputs:
- id: in_ribo_bams
  doc: Path(s) to Ribo-seq BAM file separated by
  type: File?
  inputBinding:
    prefix: --ribo_bams
- id: in_rna_t_svs
  doc: "Path(s) to RNA-seq *_translating_ORFs.tsv\nfile separated by comma"
  type: File?
  inputBinding:
    prefix: --rna_tsvs
- id: in_ribot_ricer_index
  doc: "Path to the index file of ribotricer This\nfile should be generated using\
    \ ribotricer\nprepare-orfs (required for BAM input)"
  type: File?
  inputBinding:
    prefix: --ribotricer_index
- id: in_prefix
  doc: Prefix to output file
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_filter_by_tx_annotation
  doc: "transcript_type to filter regions by\n[default: protein_coding]"
  type: string?
  inputBinding:
    prefix: --filter_by_tx_annotation
- id: in_phase_score_cut_off
  doc: "Phase score cutoff for determining active\ntranslation (required for BAM input)\n\
    [default: 0.428571428571]"
  type: double?
  inputBinding:
    prefix: --phase_score_cutoff
- id: in_min_valid_codons
  doc: "Minimum number of codons with non-zero reads\nfor determining active translation\
    \ (required\nfor BAM input)  [default: 5]"
  type: long?
  inputBinding:
    prefix: --min_valid_codons
- id: in_sampling_ratio
  doc: "Number of protein coding regions to sample\nper bootstrap  [default: 0.33]"
  type: double?
  inputBinding:
    prefix: --sampling_ratio
- id: in_n_bootstraps
  doc: 'Number of bootstraps  [default: 20000]'
  type: long?
  inputBinding:
    prefix: --n_bootstraps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Prefix to output file
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- learn-cutoff
