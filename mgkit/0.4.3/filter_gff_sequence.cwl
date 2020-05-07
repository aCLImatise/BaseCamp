class: CommandLineTool
id: filter_gff_sequence.cwl
inputs:
- id: sorted
  doc: If the GFF file is sorted (all of a sequence annotations are contiguos) can
    use less memory, `sort -s -k 1,1` can be used
  type: boolean
  inputBinding:
    prefix: --sorted
- id: attribute
  doc: '[evalue|bitscore|identity|length] Attribute on which to apply the filter [default:
    bitscore]'
  type: boolean
  inputBinding:
    prefix: --attribute
- id: function
  doc: '[mean|median|quantile|std|max|min] Function for filtering  [default: mean]'
  type: boolean
  inputBinding:
    prefix: --function
- id: value
  doc: Value for the function (used for *std* and *quantile*)
  type: double
  inputBinding:
    prefix: --value
- id: comparison
  doc: '[gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than or equal to)  [default:
    ge]'
  type: boolean
  inputBinding:
    prefix: --comparison
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-gff
- sequence
