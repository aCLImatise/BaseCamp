version 1.0

task Deeptools {
  input {
    String multi_bam_summary
    String multi_bigwig_summary
    String correct_gc_bias
    String bam_coverage
    String bam_compare
    String bigwig_compare
    String compute_matrix
    String alignment_sieve
    String plot_correlation
    String plot_pc_a
    String plot_fingerprint
    String bam_pe_fragment_size
    String compute_gc_bias
    String plot_coverage
    String estimate_read_filtering
    String plot_heat_map
    String plot_profile
    String plot_enrichment
  }
  command <<<
    deeptools \
      ~{multi_bam_summary} \
      ~{multi_bigwig_summary} \
      ~{correct_gc_bias} \
      ~{bam_coverage} \
      ~{bam_compare} \
      ~{bigwig_compare} \
      ~{compute_matrix} \
      ~{alignment_sieve} \
      ~{plot_correlation} \
      ~{plot_pc_a} \
      ~{plot_fingerprint} \
      ~{bam_pe_fragment_size} \
      ~{compute_gc_bias} \
      ~{plot_coverage} \
      ~{estimate_read_filtering} \
      ~{plot_heat_map} \
      ~{plot_profile} \
      ~{plot_enrichment}
  >>>
  parameter_meta {
    multi_bam_summary: "compute read coverages over bam files. Output used for plotCorrelation or plotPCA"
    multi_bigwig_summary: "extract scores from bigwig files. Output used for plotCorrelation or plotPCA"
    correct_gc_bias: "corrects GC bias from bam file. Don't use it with ChIP data"
    bam_coverage: "computes read coverage per bins or regions"
    bam_compare: "computes log2 ratio and other operations of read coverage of two samples per bins or regions"
    bigwig_compare: "computes log2 ratio and other operations from bigwig scores of two samples per bins or regions"
    compute_matrix: "prepares the data from bigwig scores for plotting with plotHeatmap or plotProfile"
    alignment_sieve: "filters BAM alignments according to specified parameters, optionally producing a BEDPE file"
    plot_correlation: "plots heatmaps or scatterplots of data correlation"
    plot_pc_a: "plots PCA"
    plot_fingerprint: "plots the distribution of enriched regions"
    bam_pe_fragment_size: "returns the read length and paired-end distance from a bam file"
    compute_gc_bias: "computes and plots the GC bias of a sample"
    plot_coverage: "plots a histogram of read coverage"
    estimate_read_filtering: "estimates the number of reads that will be filtered from a BAM file or files given certain criteria"
    plot_heat_map: "plots one or multiple heatmaps of user selected regions over different genomic scores"
    plot_profile: "plots the average profile of user selected regions over different genomic scores"
    plot_enrichment: "plots the read/fragment coverage of one or more sets of regions"
  }
}