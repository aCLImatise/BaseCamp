class: CommandLineTool
id: oncogemini_stats.cwl
inputs:
- id: in_ts_tv
  doc: Report the overall ts/tv ratio.
  type: boolean
  inputBinding:
    prefix: --tstv
- id: in_ts_tv_coding
  doc: Report the ts/tv ratio in coding regions.
  type: boolean
  inputBinding:
    prefix: --tstv-coding
- id: in_ts_tv_noncoding
  doc: Report the ts/tv ratio in non-coding regions.
  type: boolean
  inputBinding:
    prefix: --tstv-noncoding
- id: in_snp_counts
  doc: "Report the count of each type of SNP (A->G, G->T,\netc.)."
  type: boolean
  inputBinding:
    prefix: --snp-counts
- id: in_sfs
  doc: Report the site frequency spectrum of the variants.
  type: boolean
  inputBinding:
    prefix: --sfs
- id: in_mds
  doc: Report the pairwise genetic distance between the
  type: boolean
  inputBinding:
    prefix: --mds
- id: in_gts_by_sample
  doc: Report the count of each genotype class obs. per
  type: boolean
  inputBinding:
    prefix: --gts-by-sample
- id: in_gt_filter
  doc: Restrictions to apply to genotype values
  type: string
  inputBinding:
    prefix: --gt-filter
- id: in_samples_dot
  doc: --vars-by-sample      Report the number of variants observed in each sample.
  type: string
  inputBinding:
    position: 0
- id: in_sample_dot
  doc: --summarize QUERY_STR
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- stats
