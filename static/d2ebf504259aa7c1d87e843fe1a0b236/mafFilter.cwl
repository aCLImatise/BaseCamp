class: CommandLineTool
id: mafFilter.cwl
inputs:
- id: tolerate
  doc: bad input rather than aborting.
  type: string
  inputBinding:
    prefix: -tolerate
- id: filter
  doc: blocks with fewer than N columns (default 1)
  type: string
  inputBinding:
    prefix: '- Filter'
- id: filter
  doc: blocks with fewer than N rows (default 2)
  type: string
  inputBinding:
    prefix: '- Filter'
- id: filter
  doc: blocks with >= N rows (default 100)
  type: string
  inputBinding:
    prefix: '- Filter'
- id: filter
  doc: scores below -minFactor * (ncol**2) * nrow
  type: string
  inputBinding:
    prefix: '- Filter'
- id: min_factor
  doc: use with -minFactor (default 5)
  type: string
  inputBinding:
    prefix: -minFactor
- id: min_score
  doc: score (alternative to -minFactor)
  type: string
  inputBinding:
    prefix: -minScore
- id: reject
  doc: blocks in filename
  type: File
  inputBinding:
    prefix: -reject
- id: need_comp
  doc: must have species as one of the component
  type: string
  inputBinding:
    prefix: -needComp
- id: overlap
  doc: blocks in reference (assumes ordered blocks)
  type: string
  inputBinding:
    prefix: -overlap
- id: component_filter
  doc: 'blocks without a component listed in filename '
  type: File
  inputBinding:
    prefix: -componentFilter
- id: species_filter
  doc: 'blocks without a species listed in filename '
  type: File
  inputBinding:
    prefix: -speciesFilter
outputs: []
cwlVersion: v1.1
baseCommand:
- mafFilter
