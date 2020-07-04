class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafFilter.cwl
inputs:
- id: tolerate
  doc: '- Just ignore bad input rather than aborting.'
  type: boolean
  inputBinding:
    prefix: -tolerate
- id: min_col
  doc: '- Filter out blocks with fewer than N columns (default 1)'
  type: string
  inputBinding:
    prefix: -minCol
- id: min_row
  doc: '- Filter out blocks with fewer than N rows (default 2)'
  type: string
  inputBinding:
    prefix: -minRow
- id: max_row
  doc: '- Filter out blocks with >= N rows (default 100)'
  type: string
  inputBinding:
    prefix: -maxRow
- id: factor
  doc: '- Filter out scores below -minFactor * (ncol**2) * nrow'
  type: boolean
  inputBinding:
    prefix: -factor
- id: min_factor
  doc: '- Factor to use with -minFactor (default 5)'
  type: string
  inputBinding:
    prefix: -minFactor
- id: min_score
  doc: '- Minimum allowed score (alternative to -minFactor)'
  type: string
  inputBinding:
    prefix: -minScore
- id: reject
  doc: '- Save rejected blocks in filename'
  type: File
  inputBinding:
    prefix: -reject
- id: need_comp
  doc: '- all alignments must have species as one of the component'
  type: string
  inputBinding:
    prefix: -needComp
- id: overlap
  doc: '- Reject overlapping blocks in reference (assumes ordered blocks)'
  type: boolean
  inputBinding:
    prefix: -overlap
- id: component_filter
  doc: '- Filter out blocks without a component listed in filename '
  type: File
  inputBinding:
    prefix: -componentFilter
- id: species_filter
  doc: '- Filter out blocks without a species listed in filename '
  type: File
  inputBinding:
    prefix: -speciesFilter
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFilter
