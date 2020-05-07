class: CommandLineTool
id: categorized_dist_scatterplot.py.cwl
inputs:
- id: map
  doc: mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --map
- id: distance_matrix
  doc: distance matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --distance_matrix
- id: primary_state
  doc: "Samples matching this state will be plotted. E.g.: AgeCategory:Child . See\
    \ qiime's filter_samples_from_otu_table.py for more syntax options [REQUIRED]"
  type: string
  inputBinding:
    prefix: --primary_state
- id: axis_category
  doc: 'this will form the horizontal axis of the figure, e.g.: AgeYears . Must be
    numbers [REQUIRED]'
  type: string
  inputBinding:
    prefix: --axis_category
- id: output_path
  doc: 'output figure, filename extention determines format. E.g.: "fig1.png" or similar.
    A "fig1.txt" or similar will also be created with the data underlying the figure
    [REQUIRED]'
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- categorized_dist_scatterplot.py
