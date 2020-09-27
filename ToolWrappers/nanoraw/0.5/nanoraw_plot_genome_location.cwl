class: CommandLineTool
id: nanoraw_plot_genome_location.cwl
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
  type: boolean
  inputBinding:
    prefix: --2d
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_genome_locations
  doc: "Plot signal at specified genomic locations. Format\nlocations as \"chrm:position[:strand]\n\
    [chrm2:position2[:strand2] ...]\" (strand not\napplicable for all applications)"
  type: string[]
  inputBinding:
    prefix: --genome-locations
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
- id: in_pdf_filename
  doc: "PDF filename to store plot(s). Default:\nNanopore_read_coverage.genome_locations.pdf"
  type: File
  inputBinding:
    prefix: --pdf-filename
- id: in_num_bases
  doc: 'Number of bases to plot from region. Default: 51'
  type: long
  inputBinding:
    prefix: --num-bases
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
- plot_genome_location
