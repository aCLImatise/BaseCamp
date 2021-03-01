class: CommandLineTool
id: insert_sizes.cwl
inputs:
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_use_default
  doc: Number of characters of seqname to use as sublibrary (default=0)
  type: long?
  inputBinding:
    prefix: -f
- id: in_show_details_insert
  doc: Show details for each insert
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_print_library_summaries
  doc: Don't print library summaries
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_use_scaffold_information
  doc: Don't use scaffold information
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_print_coverage_information
  doc: Print coverage information
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_also_process_contigs
  doc: Also process contigs not placed into a scaffold
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- insert-sizes
