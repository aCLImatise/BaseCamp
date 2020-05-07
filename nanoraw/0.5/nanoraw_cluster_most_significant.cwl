class: CommandLineTool
id: nanoraw_cluster_most_significant.cwl
inputs:
- id: fast5_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: fast5_based_irs2
  doc: Second set of directories containing fast5 files to compare.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs2
- id: corrected_group
  doc: 'FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: obs_per_base_filter
  doc: Filter reads for plotting baseed on threshold of percentiles of the number
    of observations assigned to a base (default no filter). Format thresholds as "percentile:thresh
    [pctl2:thresh2 ...]" E.g. reads with 99th pctl <200 obs and max <5k obs would
    be "99:200 100:5000".
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: test_type
  doc: 'Type of significance test to apply. Choices are: mw_utest (default; mann-whitney
    u-test), ttest.'
  type: string
  inputBinding:
    prefix: --test-type
- id: fishers_method_offset
  doc: "Offset up and downstream over which to compute combined p-values using Fisher's\
    \ method. Default: 2."
  type: string
  inputBinding:
    prefix: --fishers-method-offset
- id: minimum_test_reads
  doc: 'Number of reads required from both samples to test for significant difference
    in signal level. Default: 5'
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: genome_fast_a
  doc: FASTA file used to map reads with "genome_resquiggle" command.
  type: string
  inputBinding:
    prefix: --genome-fasta
- id: processes
  doc: 'Number of processes. Default: 1'
  type: string
  inputBinding:
    prefix: --processes
- id: pdf_filename
  doc: 'PDF filename to store plot(s). Default: Nanopore_most_significant_clustering.pdf'
  type: string
  inputBinding:
    prefix: --pdf-filename
- id: statistics_filename
  doc: "Filename to save/load base by base signal difference statistics. If file exists\
    \ it will try to be loaded, if it does not exist it will be created to save statistics.\
    \ Default: Don't save/load."
  type: string
  inputBinding:
    prefix: --statistics-filename
- id: r_data_filename
  doc: "Filename to save R data structure. Defualt: Don't save"
  type: string
  inputBinding:
    prefix: --r-data-filename
- id: num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: string
  inputBinding:
    prefix: --num-regions
- id: q_value_threshold
  doc: Choose the number of regions to select by the FDR corrected p-values. Note
    that --num-regions will be ignored if this option is set.
  type: string
  inputBinding:
    prefix: --q-value-threshold
- id: num_bases
  doc: 'Number of bases to plot from region. Default: 5'
  type: string
  inputBinding:
    prefix: --num-bases
- id: slide_span
  doc: 'Number of bases to slide up and down when computing distances for signal cluster
    plotting. Default: Exact position'
  type: string
  inputBinding:
    prefix: --slide-span
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- cluster_most_significant
