version 1.0

task OncogeminiStats {
  input {
    Boolean? ts_tv
    Boolean? ts_tv_coding
    Boolean? ts_tv_noncoding
    Boolean? snp_counts
    Boolean? sfs
    Boolean? mds
    Boolean? gts_by_sample
    String? gt_filter
    String samples_dot
    String sample_dot
  }
  command <<<
    oncogemini stats \
      ~{samples_dot} \
      ~{sample_dot} \
      ~{if (ts_tv) then "--tstv" else ""} \
      ~{if (ts_tv_coding) then "--tstv-coding" else ""} \
      ~{if (ts_tv_noncoding) then "--tstv-noncoding" else ""} \
      ~{if (snp_counts) then "--snp-counts" else ""} \
      ~{if (sfs) then "--sfs" else ""} \
      ~{if (mds) then "--mds" else ""} \
      ~{if (gts_by_sample) then "--gts-by-sample" else ""} \
      ~{if defined(gt_filter) then ("--gt-filter " +  '"' + gt_filter + '"') else ""}
  >>>
  parameter_meta {
    ts_tv: "Report the overall ts/tv ratio."
    ts_tv_coding: "Report the ts/tv ratio in coding regions."
    ts_tv_noncoding: "Report the ts/tv ratio in non-coding regions."
    snp_counts: "Report the count of each type of SNP (A->G, G->T,\\netc.)."
    sfs: "Report the site frequency spectrum of the variants."
    mds: "Report the pairwise genetic distance between the"
    gts_by_sample: "Report the count of each genotype class obs. per"
    gt_filter: "Restrictions to apply to genotype values"
    samples_dot: "--vars-by-sample      Report the number of variants observed in each sample."
    sample_dot: "--summarize QUERY_STR"
  }
  output {
    File out_stdout = stdout()
  }
}