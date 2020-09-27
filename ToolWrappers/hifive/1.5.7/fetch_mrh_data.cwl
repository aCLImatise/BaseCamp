class: CommandLineTool
id: fetch_mrh_data.cwl
inputs:
- id: in_chrom
  doc: The first region chromosome.
  type: string
  inputBinding:
    prefix: --chrom
- id: in_chrom_two
  doc: "The first region chromosome. If no value is passed,\nthis will be set to the\
    \ same value as 'chrom'."
  type: long
  inputBinding:
    prefix: --chrom2
- id: in_start
  doc: "The first region start coordinate to plot. If no value\nis passed, this will\
    \ be set to the first bin position\nin the heatmap. [default: None]"
  type: string
  inputBinding:
    prefix: --start
- id: in_start_two
  doc: "The second region start coordinate to plot. If no\nvalue is passed, this will\
    \ be set to the same value as\nstart. [default: None]"
  type: long
  inputBinding:
    prefix: --start2
- id: in_end
  doc: "The first region stop coordinate to plot. If no value\nis passed, this will\
    \ be set to the last bin position\nin the heatmap [default: None]"
  type: string
  inputBinding:
    prefix: --end
- id: in_end_two
  doc: "The second region stop coordinate to plot. If no value\nis passed, this will\
    \ be set to the last bin position\nin the heatmap [default: None]"
  type: long
  inputBinding:
    prefix: --end2
- id: in_max_resolution
  doc: "The maximum resolution bound for returned data. If no\nvalue is passed, this\
    \ will be set to the highest\nresolution available in the heatmap for the\nchromosome(s).\
    \ [default: None]"
  type: long
  inputBinding:
    prefix: --max-resolution
- id: in_min_resolution
  doc: "The minimum resolution bound for returned data. If no\nvalue is passed, this\
    \ will be set to the lowest\nresolution available in the heatmap for the\nchromosome(s).\
    \ [default: None]"
  type: long
  inputBinding:
    prefix: --min-resolution
- id: in_text
  doc: "Write a genomic interval text file instead of an\nimage.\n"
  type: boolean
  inputBinding:
    prefix: --text
- id: in_heat_map
  doc: "The name of a HiFive multi-resolution heatmap file to\nconstruct the image\
    \ from."
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: "The name of the file to write the multi-resolution\nHiFive heatmap image to."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fetch_mrh_data
