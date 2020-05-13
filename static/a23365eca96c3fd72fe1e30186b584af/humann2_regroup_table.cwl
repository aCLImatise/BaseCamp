class: CommandLineTool
id: humann2_regroup_table.cwl
inputs:
- id: input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string
  inputBinding:
    prefix: --input
- id: groups
  doc: Built-in grouping options
  type: string
  inputBinding:
    prefix: --groups
- id: custom
  doc: Custom groups file (.tsv or .tsv.gz format)
  type: string
  inputBinding:
    prefix: --custom
- id: reversed
  doc: 'Custom groups file is reversed: mapping from features to groups'
  type: boolean
  inputBinding:
    prefix: --reversed
- id: function
  doc: How to combine grouped features; default=sum
  type: string
  inputBinding:
    prefix: --function
- id: precision
  doc: Decimal places to round to after applying function; default=3
  type: string
  inputBinding:
    prefix: --precision
- id: ungrouped
  doc: Include an 'UNGROUPED' group to capture features that did not belong to other
    groups? default=Y
  type: string
  inputBinding:
    prefix: --ungrouped
- id: protected
  doc: Carry through protected features, such as 'UNMAPPED'? default=Y
  type: string
  inputBinding:
    prefix: --protected
- id: output
  doc: Path for modified output table; default=STDOUT
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_regroup_table
