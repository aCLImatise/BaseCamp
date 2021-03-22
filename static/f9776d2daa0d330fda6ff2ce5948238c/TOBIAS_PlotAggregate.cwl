class: CommandLineTool
id: TOBIAS_PlotAggregate.cwl
inputs:
- id: in_tfbs
  doc: '[<bed> [<bed> ...]]           TFBS sites (*required)'
  type: boolean?
  inputBinding:
    prefix: --TFBS
- id: in_signals
  doc: '[<bigwig> [<bigwig> ...]]  Signals in bigwig format (*required)'
  type: boolean?
  inputBinding:
    prefix: --signals
- id: in_regions
  doc: '[<bed> [<bed> ...]]        Regions to overlap with TFBS (optional)'
  type: boolean?
  inputBinding:
    prefix: --regions
- id: in_whitelist
  doc: '[<bed> [<bed> ...]]      Only plot sites overlapping whitelist (optional)'
  type: boolean?
  inputBinding:
    prefix: --whitelist
- id: in_blacklist
  doc: '[<bed> [<bed> ...]]      Exclude sites overlapping blacklist (optional)'
  type: boolean?
  inputBinding:
    prefix: --blacklist
- id: in_output
  doc: 'Path to output plot (default: TOBIAS_aggregate.pdf)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_txt
  doc: "Path to output file for aggregates in .txt-format\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output-txt
- id: in_title
  doc: 'Title of plot (default: "Aggregated signals")'
  type: boolean?
  inputBinding:
    prefix: --title
- id: in_flank
  doc: "Flanking basepairs (+/-) to show in plot (counted\nfrom middle of the TFBS)\
    \ (default: 60)"
  type: boolean?
  inputBinding:
    prefix: --flank
- id: in_tfbs_labels
  doc: "[ [ ...]]              Labels used for each TFBS file (default: prefix of\n\
    each --TFBS)"
  type: boolean?
  inputBinding:
    prefix: --TFBS-labels
- id: in_signal_labels
  doc: "[ [ ...]]            Labels used for each signal file (default: prefix\nof\
    \ each --signals)"
  type: boolean?
  inputBinding:
    prefix: --signal-labels
- id: in_region_labels
  doc: "[ [ ...]]            Labels used for each regions file (default: prefix\n\
    of each --regions)"
  type: boolean?
  inputBinding:
    prefix: --region-labels
- id: in_share_y
  doc: "Share y-axis range across plots\n(none/signals/sites/both). Use \"--share-y\
    \ signals\"\nif bigwig signals have similar ranges. Use \"--\nshare_y sites\"\
    \ if sites per bigwig are comparable,\nbut bigwigs themselves aren't comparable\
    \ (default:\nnone)"
  type: boolean?
  inputBinding:
    prefix: --share-y
- id: in_normalize
  doc: "Normalize the aggregate signal(s) to be between 0-1\n(default: the true range\
    \ of values is shown)"
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_negate
  doc: Negate overlap with regions
  type: boolean?
  inputBinding:
    prefix: --negate
- id: in_smooth
  doc: "Smooth output signal by taking the mean of <smooth>\nbp windows (default:\
    \ 1 (no smooth)"
  type: long?
  inputBinding:
    prefix: --smooth
- id: in_log_transform
  doc: Log transform the signals before aggregation
  type: boolean?
  inputBinding:
    prefix: --log-transform
- id: in_plot_boundaries
  doc: "Plot TFBS boundaries (Note: estimated from first\nregion in each --TFBS)"
  type: boolean?
  inputBinding:
    prefix: --plot-boundaries
- id: in_signal_on_x
  doc: "Show signals on x-axis and TFBSs on y-axis\n(default: signal is on y-axis)"
  type: boolean?
  inputBinding:
    prefix: --signal-on-x
- id: in_remove_outliers
  doc: "Value between 0-1 indicating the percentile of\nregions to include, e.g. 0.99\
    \ to remove the sites\nwith 1% highest values (default: 1)"
  type: double?
  inputBinding:
    prefix: --remove-outliers
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1:\nerrors/warnings, 2: info, 3: stats,\
    \ 4: debug, 5:\nspam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output plot (default: TOBIAS_aggregate.pdf)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_txt
  doc: "Path to output file for aggregates in .txt-format\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_txt)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotAggregate
