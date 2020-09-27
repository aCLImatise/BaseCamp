class: CommandLineTool
id: phyluce_probe_query_multi_merge_table.cwl
inputs:
- id: in_base_tax_on
  doc: '[--specific-counts SPECIFIC_COUNTS]'
  type: string
  inputBinding:
    prefix: --base-taxon
- id: in_db
  doc: The database to query
  type: string
  inputBinding:
    prefix: --db
- id: in_output
  doc: "When using --specific-counts, output a BED file of\nthose loci"
  type: File
  inputBinding:
    prefix: --output
- id: in_specific_counts
  doc: "Return data for a specific minimum number of taxa.\n"
  type: long
  inputBinding:
    prefix: --specific-counts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "When using --specific-counts, output a BED file of\nthose loci"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_probe_query_multi_merge_table
