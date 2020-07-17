class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nanoraw_write_wiggles.cwl
inputs:
- id: base_call_subgroups
  doc: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template\
    \ and/or complement reads are stored. Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: two_d
  doc: Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template
    BaseCalled_complement`
  type: boolean
  inputBinding:
    prefix: --2d
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: fast_five_based_irs_two
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
- id: statistics_filename
  doc: "Filename to save/load base by base signal difference statistics. If file exists\
    \ it will try to be loaded, if it does not exist it will be created to save statistics.\
    \ Default: Don't save/load."
  type: string
  inputBinding:
    prefix: --statistics-filename
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoraw
- write_wiggles
