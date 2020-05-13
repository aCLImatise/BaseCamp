class: CommandLineTool
id: hifive_hic_mrheatmap.cwl
inputs:
- id: project
  doc: The name of a HiFive HiC project file to pull data from.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write HiC multi-resolution heatmaps to.
  type: string
  inputBinding:
    position: 1
- id: trans
  doc: 'Calculate and include trans interactions in heatmaps. [default: False]'
  type: boolean
  inputBinding:
    prefix: --trans
- id: chromosomes
  doc: 'A comma-separated list of chromosomes to include in the heatmaps (None indicates
    all chromosomes). [default: None]'
  type: string
  inputBinding:
    prefix: --chromosomes
- id: min_observations
  doc: 'The minimum number of observed reads in a bin for it to be considered valid.
    [default: 20]'
  type: long
  inputBinding:
    prefix: --minobservations
- id: maximum_binsize
  doc: 'The largest sized bin to use (minimum resolution), in base pairs. [default:
    1280000]'
  type: long
  inputBinding:
    prefix: --maximum-binsize
- id: minimum_binsize
  doc: 'The smallest sized bin to use (maximum resolution), in base pairs. [default:
    10000]'
  type: long
  inputBinding:
    prefix: --minimum-binsize
- id: maximum_trans_binsize
  doc: 'The largest sized bin to use for trans interactions (minimum resolution),
    in base pairs. [default: None]'
  type: long
  inputBinding:
    prefix: --maximum-trans-binsize
- id: minimum_trans_binsize
  doc: 'The smallest sized bin to use for trans interactions (maximum resolution),
    in base pairs. [default: None]'
  type: long
  inputBinding:
    prefix: --minimum-trans-binsize
- id: mid_binsize
  doc: 'The smallest sized bin to use for the entire chromosome(s), in base pairs.
    This is used to balance memory usage vs. speed. [default: 40000]'
  type: string
  inputBinding:
    prefix: --mid-binsize
- id: datatype
  doc: 'Which corrections (if any) to apply to counts. [default: fend]'
  type: string
  inputBinding:
    prefix: --datatype
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-mrheatmap
