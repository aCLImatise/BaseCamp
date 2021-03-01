class: CommandLineTool
id: humann2_barplot.cwl
inputs:
- id: in_input
  doc: HUMAnN2 table with optional metadata
  type: long?
  inputBinding:
    prefix: --input
- id: in_focal_feature
  doc: Feature ID of interest (give ID not full name)
  type: string?
  inputBinding:
    prefix: --focal-feature
- id: in_top_strata
  doc: Number of top stratifications to highlight (top = highest grand means)
  type: long?
  inputBinding:
    prefix: --top-strata
- id: in_sample_sorting_methods
  doc: "[<sorting methods> ...], --sort <sorting methods> [<sorting methods> ...]\n\
    Sample sorting methods (can use more than one; will evaluate in order)\nnone \
    \       : Default\nsum         : Sum of stratified values\ndominant    : Value\
    \ of the most dominant stratification\nsimilarity  : Bray-Curtis agreement of\
    \ relative stratifications\nusimilarity : Bray-Curtis agreement of raw stratifications\n\
    metadata    : Given metadata label"
  type: string?
  inputBinding:
    prefix: -s
- id: in_last_meta_datum
  doc: Indicate end of metadata rows
  type: string?
  inputBinding:
    prefix: --last-metadatum
- id: in_focal_meta_datum
  doc: Indicate metadatum to highlight / group by
  type: string?
  inputBinding:
    prefix: --focal-metadatum
- id: in_colormap
  doc: Color space for stratifications
  type: string?
  inputBinding:
    prefix: --colormap
- id: in_meta_colormap
  doc: Color space for metadata levels
  type: string?
  inputBinding:
    prefix: --meta-colormap
- id: in_exclude_unclassified
  doc: Do not include the 'unclassified' stratum
  type: boolean?
  inputBinding:
    prefix: --exclude-unclassified
- id: in_output
  doc: Where to save the figure
  type: File?
  inputBinding:
    prefix: --output
- id: in_scaling
  doc: "Scaling options for total bar heights (strata are always proportional to height)\n\
    none        : Default\npseudolog   : Total bar heights log-scaled (strata are\
    \ NOT log scaled)\nnormalize   : Bars all have height=1 (highlighting relative\
    \ attribution)"
  type: long?
  inputBinding:
    prefix: --scaling
- id: in_as_genera
  doc: Collapse species to genera
  type: boolean?
  inputBinding:
    prefix: --as-genera
- id: in_grid
  doc: Add y-axis grid
  type: boolean?
  inputBinding:
    prefix: --grid
- id: in_remove_zeroes
  doc: Do not plot samples with zero sum for this feature
  type: boolean?
  inputBinding:
    prefix: --remove-zeroes
- id: in_width
  doc: 'Relative width of the plot vs. legend (default: 5)'
  type: long?
  inputBinding:
    prefix: --width
- id: in_size__dimensions
  doc: "<size>, --dimensions <size> <size>\nImage height and width in inches (default:\
    \ 8 4)"
  type: long?
  inputBinding:
    prefix: -d
- id: in_limit_ylims_limit
  doc: "<limit>, --ylims <limit> <limit>\nFix limits for y-axis"
  type: string?
  inputBinding:
    prefix: -y
- id: in_legend_stretch
  doc: "Stretch/compress legend elements\n"
  type: boolean?
  inputBinding:
    prefix: --legend-stretch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_barplot
