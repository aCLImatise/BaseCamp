class: CommandLineTool
id: humann2_barplot.cwl
inputs:
- id: input
  doc: HUMAnN2 table with optional metadata
  type: string
  inputBinding:
    prefix: --input
- id: focal_feature
  doc: Feature ID of interest (give ID not full name)
  type: string
  inputBinding:
    prefix: --focal-feature
- id: top_strata
  doc: Number of top stratifications to highlight (top = highest grand means)
  type: long
  inputBinding:
    prefix: --top-strata
- id: s
  doc: '[<sorting methods> ...], --sort <sorting methods> [<sorting methods> ...]
    Sample sorting methods (can use more than one; will evaluate in order) none        :
    Default sum         : Sum of stratified values dominant    : Value of the most
    dominant stratification similarity  : Bray-Curtis agreement of relative stratifications
    usimilarity : Bray-Curtis agreement of raw stratifications metadata    : Given
    metadata label'
  type: string
  inputBinding:
    prefix: -s
- id: last_meta_datum
  doc: Indicate end of metadata rows
  type: string
  inputBinding:
    prefix: --last-metadatum
- id: focal_meta_datum
  doc: Indicate metadatum to highlight / group by
  type: string
  inputBinding:
    prefix: --focal-metadatum
- id: colormap
  doc: Color space for stratifications
  type: string
  inputBinding:
    prefix: --colormap
- id: meta_colormap
  doc: Color space for metadata levels
  type: string
  inputBinding:
    prefix: --meta-colormap
- id: exclude_unclassified
  doc: Do not include the 'unclassified' stratum
  type: boolean
  inputBinding:
    prefix: --exclude-unclassified
- id: output
  doc: Where to save the figure
  type: File
  inputBinding:
    prefix: --output
- id: scaling
  doc: 'Scaling options for total bar heights (strata are always proportional to height)
    none        : Default pseudolog   : Total bar heights log-scaled (strata are NOT
    log scaled) normalize   : Bars all have height=1 (highlighting relative attribution)'
  type: string
  inputBinding:
    prefix: --scaling
- id: as_genera
  doc: Collapse species to genera
  type: boolean
  inputBinding:
    prefix: --as-genera
- id: grid
  doc: Add y-axis grid
  type: boolean
  inputBinding:
    prefix: --grid
- id: remove_zeroes
  doc: Do not plot samples with zero sum for this feature
  type: boolean
  inputBinding:
    prefix: --remove-zeroes
- id: width
  doc: 'Relative width of the plot vs. legend (default: 5)'
  type: long
  inputBinding:
    prefix: --width
- id: d
  doc: '<size>, --dimensions <size> <size> Image height and width in inches (default:
    8 4)'
  type: long
  inputBinding:
    prefix: -d
- id: y
  doc: <limit>, --ylims <limit> <limit> Fix limits for y-axis
  type: string
  inputBinding:
    prefix: -y
- id: e
  doc: ', --legend-stretch  Stretch/compress legend elements'
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_barplot
