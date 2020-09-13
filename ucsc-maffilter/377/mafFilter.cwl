class: CommandLineTool
id: ../../../mafFilter.cwl
inputs:
- id: in_tolerate
  doc: '- Just ignore bad input rather than aborting.'
  type: boolean
  inputBinding:
    prefix: -tolerate
- id: in_min_col
  doc: '- Filter out blocks with fewer than N columns (default 1)'
  type: long
  inputBinding:
    prefix: -minCol
- id: in_min_row
  doc: '- Filter out blocks with fewer than N rows (default 2)'
  type: long
  inputBinding:
    prefix: -minRow
- id: in_max_row
  doc: '- Filter out blocks with >= N rows (default 100)'
  type: long
  inputBinding:
    prefix: -maxRow
- id: in_factor
  doc: '- Filter out scores below -minFactor * (ncol**2) * nrow'
  type: boolean
  inputBinding:
    prefix: -factor
- id: in_min_factor
  doc: '- Factor to use with -minFactor (default 5)'
  type: long
  inputBinding:
    prefix: -minFactor
- id: in_min_score
  doc: '- Minimum allowed score (alternative to -minFactor)'
  type: string
  inputBinding:
    prefix: -minScore
- id: in_reject
  doc: '- Save rejected blocks in filename'
  type: File
  inputBinding:
    prefix: -reject
- id: in_need_comp
  doc: '- all alignments must have species as one of the component'
  type: string
  inputBinding:
    prefix: -needComp
- id: in_overlap
  doc: '- Reject overlapping blocks in reference (assumes ordered blocks)'
  type: boolean
  inputBinding:
    prefix: -overlap
- id: in_component_filter
  doc: '- Filter out blocks without a component listed in filename'
  type: File
  inputBinding:
    prefix: -componentFilter
- id: in_species_filter
  doc: '- Filter out blocks without a species listed in filename'
  type: File
  inputBinding:
    prefix: -speciesFilter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_component_filter
  doc: '- Filter out blocks without a component listed in filename'
  type: File
  outputBinding:
    glob: $(inputs.in_component_filter)
- id: out_species_filter
  doc: '- Filter out blocks without a species listed in filename'
  type: File
  outputBinding:
    glob: $(inputs.in_species_filter)
cwlVersion: v1.1
baseCommand:
- mafFilter
