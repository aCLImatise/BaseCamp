class: CommandLineTool
id: fetch_mrh_data.cwl
inputs:
- id: heat_map
  doc: The name of a HiFive multi-resolution heatmap file to construct the image from.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The name of the file to write the multi-resolution HiFive heatmap image to.
  type: string
  inputBinding:
    position: 1
- id: chrom
  doc: The first region chromosome.
  type: string
  inputBinding:
    prefix: --chrom
- id: chrom2
  doc: The first region chromosome. If no value is passed, this will be set to the
    same value as 'chrom'.
  type: string
  inputBinding:
    prefix: --chrom2
- id: start
  doc: 'The first region start coordinate to plot. If no value is passed, this will
    be set to the first bin position in the heatmap. [default: None]'
  type: string
  inputBinding:
    prefix: --start
- id: start_2
  doc: 'The second region start coordinate to plot. If no value is passed, this will
    be set to the same value as start. [default: None]'
  type: string
  inputBinding:
    prefix: --start2
- id: end
  doc: 'The first region stop coordinate to plot. If no value is passed, this will
    be set to the last bin position in the heatmap [default: None]'
  type: string
  inputBinding:
    prefix: --end
- id: end2
  doc: 'The second region stop coordinate to plot. If no value is passed, this will
    be set to the last bin position in the heatmap [default: None]'
  type: string
  inputBinding:
    prefix: --end2
- id: max_resolution
  doc: 'The maximum resolution bound for returned data. If no value is passed, this
    will be set to the highest resolution available in the heatmap for the chromosome(s).
    [default: None]'
  type: long
  inputBinding:
    prefix: --max-resolution
- id: min_resolution
  doc: 'The minimum resolution bound for returned data. If no value is passed, this
    will be set to the lowest resolution available in the heatmap for the chromosome(s).
    [default: None]'
  type: long
  inputBinding:
    prefix: --min-resolution
- id: text
  doc: Write a genomic interval text file instead of an image.
  type: boolean
  inputBinding:
    prefix: --text
outputs: []
cwlVersion: v1.1
baseCommand:
- fetch_mrh_data
