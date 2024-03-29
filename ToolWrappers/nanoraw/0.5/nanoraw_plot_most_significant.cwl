class: CommandLineTool
id: nanoraw_plot_most_significant.cwl
inputs:
- id: in_base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template\
    \ and/or complement reads are\nstored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_two_d
  doc: "Input contains 2D reads. Equivalent to `--basecall-\nsubgroups BaseCalled_template\
    \ BaseCalled_complement`"
  type: boolean?
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
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_over_plot_threshold
  doc: "Number of reads to trigger alternative plot type\ninstead of raw signal due\
    \ to overplotting. Default: 50"
  type: long?
  inputBinding:
    prefix: --overplot-threshold
- id: in_over_plot_type
  doc: "Plot type for regions with higher coverage. Choices:\nDownsample (default),\
    \ Boxplot , Quantile, Violin"
  type: string?
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
  type: string?
  inputBinding:
    prefix: --test-type
- id: in_fishers_method_offset
  doc: "Offset up and downstream over which to compute\ncombined p-values using Fisher's\
    \ method. Default: 2."
  type: long?
  inputBinding:
    prefix: --fishers-method-offset
- id: in_minimum_test_reads
  doc: "Number of reads required from both samples to test for\nsignificant difference\
    \ in signal level. Default: 5"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_read_coverage.significant_difference.pdf"
  type: File?
  inputBinding:
    prefix: --pdf-filename
- id: in_statistics_filename
  doc: "Filename to save/load base by base signal difference\nstatistics. If file\
    \ exists it will try to be loaded,\nif it does not exist it will be created to\
    \ save\nstatistics. Default: Don't save/load."
  type: File?
  inputBinding:
    prefix: --statistics-filename
- id: in_q_value_threshold
  doc: "Choose the number of regions to select by the FDR\ncorrected p-values. Note\
    \ that --num-regions will be\nignored if this option is set."
  type: long?
  inputBinding:
    prefix: --q-value-threshold
- id: in_sequences_filename
  doc: "Filename to store sequences for selected regions (e.g.\nfor PWM search). Sequences\
    \ will be stored in FASTA\nformat. Default: None."
  type: File?
  inputBinding:
    prefix: --sequences-filename
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 10'
  type: long?
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot from region. Default: 51'
  type: long?
  inputBinding:
    prefix: --num-bases
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- plot_most_significant
