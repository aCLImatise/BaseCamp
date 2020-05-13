class: CommandLineTool
id: TOBIAS_PlotAggregate.cwl
inputs:
- id: tfbs
  doc: '[<bed> [<bed> ...]]           TFBS sites (*required)'
  type: boolean
  inputBinding:
    prefix: --TFBS
- id: signals
  doc: '[<bigwig> [<bigwig> ...]]  Signals in bigwig format (*required)'
  type: boolean
  inputBinding:
    prefix: --signals
- id: regions
  doc: '[<bed> [<bed> ...]]        Regions to overlap with TFBS (optional)'
  type: boolean
  inputBinding:
    prefix: --regions
- id: whitelist
  doc: '[<bed> [<bed> ...]]      Only plot sites overlapping whitelist (optional)'
  type: boolean
  inputBinding:
    prefix: --whitelist
- id: blacklist
  doc: '[<bed> [<bed> ...]]      Exclude sites overlapping blacklist (optional)'
  type: boolean
  inputBinding:
    prefix: --blacklist
- id: output
  doc: 'Path to output (default: TOBIAS_aggregate.pdf)'
  type: boolean
  inputBinding:
    prefix: --output
- id: title
  doc: 'Title of plot (default: "Aggregated signals")'
  type: boolean
  inputBinding:
    prefix: --title
- id: flank
  doc: 'Flanking basepairs (+/-) to show in plot (counted from middle of the TFBS)
    (default: 60)'
  type: boolean
  inputBinding:
    prefix: --flank
- id: tfbs_labels
  doc: '[ [ ...]]              Labels used for each TFBS file (default: prefix of
    each --TFBS)'
  type: boolean
  inputBinding:
    prefix: --TFBS-labels
- id: signal_labels
  doc: '[ [ ...]]            Labels used for each signal file (default: prefix of
    each --signals)'
  type: boolean
  inputBinding:
    prefix: --signal-labels
- id: region_labels
  doc: '[ [ ...]]            Labels used for each regions file (default: prefix of
    each --regions)'
  type: boolean
  inputBinding:
    prefix: --region-labels
- id: share_y
  doc: "Share y-axis range across plots (none/signals/sites/both). Use \"--share-y\
    \ signals\" if bigwig signals have similar ranges. Use \"-- share_y sites\" if\
    \ sites per bigwig are comparable, but bigwigs themselves aren't comparable (default:\
    \ none)"
  type: boolean
  inputBinding:
    prefix: --share-y
- id: normalize
  doc: 'Normalize the aggregate signal(s) to be between 0-1 (default: the true range
    of values is shown)'
  type: boolean
  inputBinding:
    prefix: --normalize
- id: negate
  doc: Negate overlap with regions
  type: boolean
  inputBinding:
    prefix: --negate
- id: smooth
  doc: 'Smooth output signal by taking the mean of <smooth> bp windows (default: 1
    (no smooth)'
  type: long
  inputBinding:
    prefix: --smooth
- id: log_transform
  doc: Log transform the signals before aggregation
  type: boolean
  inputBinding:
    prefix: --log-transform
- id: plot_boundaries
  doc: 'Plot TFBS boundaries (Note: estimated from first region in each --TFBS)'
  type: boolean
  inputBinding:
    prefix: --plot-boundaries
- id: signal_on_x
  doc: 'Show signals on x-axis and TFBSs on y-axis (default: signal is on y-axis)'
  type: boolean
  inputBinding:
    prefix: --signal-on-x
- id: remove_outliers
  doc: 'Value between 0-1 indicating the percentile of regions to include, e.g. 0.99
    to remove the sites with 1% highest values (default: 1)'
  type: double
  inputBinding:
    prefix: --remove-outliers
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotAggregate
