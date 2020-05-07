class: CommandLineTool
id: hifive_hic_heatmap.cwl
inputs:
- id: project
  doc: The name of a HiFive HiC project file to pull data from.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write HiC heatmaps to.
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
- id: binsize
  doc: 'The size of bins, in base pairs, to group data into. [default: 10000]'
  type: string
  inputBinding:
    prefix: --binsize
- id: datatype
  doc: 'Which corrections (if any) to apply to counts. [default: fend]'
  type: string
  inputBinding:
    prefix: --datatype
- id: format
  doc: 'Format of output. [default: hdf5]'
  type: string
  inputBinding:
    prefix: --format
- id: dynamically_bin
  doc: Dynamically bin heatmap.
  type: boolean
  inputBinding:
    prefix: --dynamically-bin
- id: expansion_binsize
  doc: 'The size of bins, in base pairs, to group data into for expanding under-populated
    bins. [default: 10000]'
  type: string
  inputBinding:
    prefix: --expansion-binsize
- id: search_distance
  doc: 'The furthest distance from the bin minpoint to expand bounds. If set to zero,
    there is no limit on expansion distance. [default: 0]'
  type: string
  inputBinding:
    prefix: --search-distance
- id: remove_failed
  doc: If a non-zero 'search-distance' is given, it is possible for a bin not to meet
    the 'minobservations' criteria before stopping looking. If this occurs and 'remove-failed'
    is set, the observed and expected values for that bin are zero.
  type: boolean
  inputBinding:
    prefix: --remove-failed
- id: image_file
  doc: Save the data as an image to this file.
  type: string
  inputBinding:
    prefix: --image-file
- id: pdf
  doc: 'Format the image in PDF format. [default: False]'
  type: boolean
  inputBinding:
    prefix: --pdf
- id: legend
  doc: 'Add color scale to the plot (pdf format only). [default: False]'
  type: boolean
  inputBinding:
    prefix: --legend
- id: names
  doc: 'Add chromosome labels to the plot (pdf format only). [default: False]'
  type: boolean
  inputBinding:
    prefix: --names
- id: keyword
  doc: Additional keyword arguments to pass to plotting function.
  type: string
  inputBinding:
    prefix: --keyword
- id: quiet
  doc: 'Silence output messages. [default: False]'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-heatmap
