class: CommandLineTool
id: hifive_hic_interval.cwl
inputs:
- id: project
  doc: The name of a HiFive HiC project file to pull data from.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write HiC interval to.
  type: string
  inputBinding:
    position: 1
- id: chromosome
  doc: The chromosome from which to pull interaction data from.
  type: string
  inputBinding:
    prefix: --chromosome
- id: chromosome_2
  doc: The second chromosome from which to pull interaction data from if pulling trans
    data.
  type: string
  inputBinding:
    prefix: --chromosome2
- id: start
  doc: The start coordinate of the pulled region to return. (None indicates the first
    valid bin on the chromosome) [default None]
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: The stop coordinate of the pulled region to return. (None indicates the last
    valid bin on the chromosome) [default None]
  type: string
  inputBinding:
    prefix: --stop
- id: start_2
  doc: The start coordinate of the second chromosome pulled region to return. (None
    indicates the first valid bin on the chromosome) [default None]
  type: string
  inputBinding:
    prefix: --start2
- id: stop2
  doc: The stop coordinate of the second chromosome pulled region to return. (None
    indicates the last valid bin on the chromosome) [default None]
  type: string
  inputBinding:
    prefix: --stop2
- id: binsize
  doc: 'The size of bins, in base pairs, to group data into. [default: 10000]'
  type: string
  inputBinding:
    prefix: --binsize
- id: max_distance
  doc: 'The maximum interaction distance to return (None indicates no maximum). [default:
    None]'
  type: long
  inputBinding:
    prefix: --max-distance
- id: data_type
  doc: 'Which corrections (if any) to apply to counts. [default: fend]'
  type: string
  inputBinding:
    prefix: --data-type
- id: matrix
  doc: Store output as a tab-separated matrix of values.
  type: boolean
  inputBinding:
    prefix: --matrix
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
- id: min_observations
  doc: 'The minimum number of observed reads in a bin for it to be considered valid.
    [default: 20]'
  type: long
  inputBinding:
    prefix: --minobservations
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
- id: rotate
  doc: 'Rotate the plot 45 degrees (cis binned only). [default: False]'
  type: boolean
  inputBinding:
    prefix: --rotate
- id: ticks
  doc: 'Add tick marks and labels to the plot (pdf format and binned only). [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --ticks
- id: legend
  doc: 'Add color scale to the plot (pdf format only). [default: False]'
  type: boolean
  inputBinding:
    prefix: --legend
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
- hic-interval
