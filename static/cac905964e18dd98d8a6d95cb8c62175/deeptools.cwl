class: CommandLineTool
id: ../../../deeptools.cwl
inputs:
- id: multi_bam_summary
  doc: compute read coverages over bam files. Output used for plotCorrelation or plotPCA
  type: string
  inputBinding:
    position: 0
- id: multi_bigwig_summary
  doc: extract scores from bigwig files. Output used for plotCorrelation or plotPCA
  type: string
  inputBinding:
    position: 1
- id: correct_gc_bias
  doc: corrects GC bias from bam file. Don't use it with ChIP data
  type: string
  inputBinding:
    position: 2
- id: bam_coverage
  doc: computes read coverage per bins or regions
  type: string
  inputBinding:
    position: 3
- id: bam_compare
  doc: computes log2 ratio and other operations of read coverage of two samples per
    bins or regions
  type: string
  inputBinding:
    position: 4
- id: bigwig_compare
  doc: computes log2 ratio and other operations from bigwig scores of two samples
    per bins or regions
  type: string
  inputBinding:
    position: 5
- id: compute_matrix
  doc: prepares the data from bigwig scores for plotting with plotHeatmap or plotProfile
  type: string
  inputBinding:
    position: 6
- id: alignment_sieve
  doc: filters BAM alignments according to specified parameters, optionally producing
    a BEDPE file
  type: string
  inputBinding:
    position: 7
- id: plot_correlation
  doc: plots heatmaps or scatterplots of data correlation
  type: string
  inputBinding:
    position: 0
- id: plot_pc_a
  doc: plots PCA
  type: string
  inputBinding:
    position: 1
- id: plot_fingerprint
  doc: plots the distribution of enriched regions
  type: string
  inputBinding:
    position: 2
- id: bam_pe_fragment_size
  doc: returns the read length and paired-end distance from a bam file
  type: string
  inputBinding:
    position: 3
- id: compute_gc_bias
  doc: computes and plots the GC bias of a sample
  type: string
  inputBinding:
    position: 4
- id: plot_coverage
  doc: plots a histogram of read coverage
  type: string
  inputBinding:
    position: 5
- id: estimate_read_filtering
  doc: estimates the number of reads that will be filtered from a BAM file or files
    given certain criteria
  type: string
  inputBinding:
    position: 6
- id: plot_heat_map
  doc: plots one or multiple heatmaps of user selected regions over different genomic
    scores
  type: string
  inputBinding:
    position: 0
- id: plot_profile
  doc: plots the average profile of user selected regions over different genomic scores
  type: string
  inputBinding:
    position: 1
- id: plot_enrichment
  doc: plots the read/fragment coverage of one or more sets of regions
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- deeptools
