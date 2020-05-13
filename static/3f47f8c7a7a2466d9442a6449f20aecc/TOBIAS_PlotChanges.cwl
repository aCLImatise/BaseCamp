class: CommandLineTool
id: TOBIAS_PlotChanges.cwl
inputs:
- id: bin_detect
  doc: Bindetect_results.txt file from BINDetect run
  type: boolean
  inputBinding:
    prefix: --bindetect
- id: tfs
  doc: Text file containing names of TFs to show in plot (one per line)
  type: boolean
  inputBinding:
    prefix: --TFS
- id: output
  doc: 'Output file for plot (default: bindetect_changes.pdf)'
  type: boolean
  inputBinding:
    prefix: --output
- id: conditions
  doc: '[ [ ...]]  Ordered list of conditions to show (default: conditions are ordered
    as within the bindetect file)'
  type: boolean
  inputBinding:
    prefix: --conditions
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
- PlotChanges
