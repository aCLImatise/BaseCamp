class: CommandLineTool
id: humann2_regroup_table.cwl
inputs:
- id: in_input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string
  inputBinding:
    prefix: --input
- id: in_groups
  doc: Built-in grouping options
  type: string
  inputBinding:
    prefix: --groups
- id: in_custom
  doc: Custom groups file (.tsv or .tsv.gz format)
  type: File
  inputBinding:
    prefix: --custom
- id: in_reversed
  doc: 'Custom groups file is reversed: mapping from features to groups'
  type: boolean
  inputBinding:
    prefix: --reversed
- id: in_function
  doc: How to combine grouped features; default=sum
  type: string
  inputBinding:
    prefix: --function
- id: in_precision
  doc: Decimal places to round to after applying function; default=3
  type: double
  inputBinding:
    prefix: --precision
- id: in_ungrouped
  doc: Include an 'UNGROUPED' group to capture features that did not belong to other
    groups? default=Y
  type: string
  inputBinding:
    prefix: --ungrouped
- id: in_protected
  doc: Carry through protected features, such as 'UNMAPPED'? default=Y
  type: string
  inputBinding:
    prefix: --protected
- id: in_output
  doc: "Path for modified output table; default=STDOUT\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path for modified output table; default=STDOUT\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- humann2_regroup_table
