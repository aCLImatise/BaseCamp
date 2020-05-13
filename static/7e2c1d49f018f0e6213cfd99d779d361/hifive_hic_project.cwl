class: CommandLineTool
id: hifive_hic_project.cwl
inputs:
- id: data
  doc: The file name of an appropriate HiFive HiCData file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write HiFive HiC project to.
  type: string
  inputBinding:
    position: 1
- id: chromosomes
  doc: 'A comma-separated list of chromosomes to learn correction values for (None
    indicates all chromosomes). [default: None]'
  type: string
  inputBinding:
    prefix: --chromosomes
- id: min_interactions
  doc: 'The minimum number of interactions needed for valid fragment. [default: 20]'
  type: long
  inputBinding:
    prefix: --min-interactions
- id: min_distance
  doc: 'The minimum interaction distance to include in fragment filtering. [default:
    0]'
  type: long
  inputBinding:
    prefix: --min-distance
- id: max_distance
  doc: 'The maximum interaction distance to include in fragment filtering (None or
    zero indicate no maximum). [default: 0]'
  type: long
  inputBinding:
    prefix: --max-distance
- id: min_binsize
  doc: 'The smallest interaction distance bin size for the distance-dependence function.
    [default: 1000]'
  type: long
  inputBinding:
    prefix: --min-binsize
- id: num_bins
  doc: 'The number of bins to partion the interaction distance range into for distance-dependence
    function. A value of zero indicates that finding the distance dependence function
    should be skipped. [default: 100]'
  type: string
  inputBinding:
    prefix: --num-bins
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-project
