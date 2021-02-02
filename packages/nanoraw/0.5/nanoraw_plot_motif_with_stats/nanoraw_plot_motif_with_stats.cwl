class: CommandLineTool
id: nanoraw_plot_motif_with_stats.cwl
inputs:
- id: in_motif
  doc: "[--corrected-group CORRECTED_GROUP]\n[--basecall-subgroups BASECALL_SUBGROUPS\
    \ [BASECALL_SUBGROUPS ...]\n| --2d]\n[--overplot-threshold OVERPLOT_THRESHOLD]\n\
    [--overplot-type {Downsample,Boxplot,Quantile,Violin}]\n[--obs-per-base-filter\
    \ OBS_PER_BASE_FILTER [OBS_PER_BASE_FILTER ...]]\n[--test-type {mw_utest,ttest}]\n\
    [--fishers-method-offset FISHERS_METHOD_OFFSET]\n[--minimum-test-reads MINIMUM_TEST_READS]\n\
    [--pdf-filename PDF_FILENAME]\n[--statistics-filename STATISTICS_FILENAME]\n[--num-regions\
    \ NUM_REGIONS]\n[--num-context NUM_CONTEXT]\n[--num-statistics NUM_STATISTICS]\n\
    [--quiet] [--help]"
  type: long
  inputBinding:
    prefix: --motif
- id: in_base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ and/or complement reads are\nstored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_two_d
  doc: "Input contains 2D reads. Equivalent to `--basecall-\nsubgroups BaseCalled_template\
    \ BaseCalled_complement`"
  type: boolean
  inputBinding:
    prefix: --2d
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_fast_five_based_irs_two
  doc: "Second set of directories containing fast5 files to\ncompare."
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs2
- id: in_corrected_group
  doc: "FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\n\
    RawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_over_plot_threshold
  doc: "Number of reads to trigger alternative plot type\ninstead of raw signal due\
    \ to overplotting. Default: 50"
  type: long
  inputBinding:
    prefix: --overplot-threshold
- id: in_over_plot_type
  doc: "Plot type for regions with higher coverage. Choices:\nDownsample (default),\
    \ Boxplot , Quantile, Violin"
  type: string
  inputBinding:
    prefix: --overplot-type
- id: in_obs_per_base_filter
  doc: "Filter reads for plotting baseed on threshold of\npercentiles of the number\
    \ of observations assigned to\na base (default no filter). Format thresholds as\n\
    \"percentile:thresh [pctl2:thresh2 ...]\" E.g. reads\nwith 99th pctl <200 obs\
    \ and max <5k obs would be\n\"99:200 100:5000\"."
  type: string[]
  inputBinding:
    prefix: --obs-per-base-filter
- id: in_test_type
  doc: "Type of significance test to apply. Choices are:\nmw_utest (default; mann-whitney\
    \ u-test), ttest."
  type: string
  inputBinding:
    prefix: --test-type
- id: in_fishers_method_offset
  doc: "Offset up and downstream over which to compute\ncombined p-values using Fisher's\
    \ method. Default: 2."
  type: long
  inputBinding:
    prefix: --fishers-method-offset
- id: in_minimum_test_reads
  doc: "Number of reads required from both samples to test for\nsignificant difference\
    \ in signal level. Default: 5"
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_read_coverage.statistics_around_motif.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_statistics_filename
  doc: "Filename to save/load base by base signal difference\nstatistics. If file\
    \ exists it will try to be loaded,\nif it does not exist it will be created to\
    \ save\nstatistics. Default: Don't save/load."
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 5'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_context
  doc: "Number of bases surrounding motif of interest.\nDefault: 2"
  type: long
  inputBinding:
    prefix: --num-context
- id: in_num_statistics
  doc: "Number of regions at which to accumulate statistics\nfor distribution plots.\
    \ Default: 200"
  type: long
  inputBinding:
    prefix: --num-statistics
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_motif_with_stats
