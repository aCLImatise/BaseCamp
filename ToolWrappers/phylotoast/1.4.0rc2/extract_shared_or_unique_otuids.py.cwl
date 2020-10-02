class: CommandLineTool
id: extract_shared_or_unique_otuids.py.cwl
inputs:
- id: in_prefix
  doc: "Provide specific text to prepend the output file\nnames. By default, the 'unique'\
    \ will be added in front\nof output filenames, for uniques calculations only."
  type: File
  inputBinding:
    prefix: --prefix
- id: in_reverse
  doc: "Get shared OTUIDs among all unique combinations of\ngroups and write out the\
    \ results to path provided to\nthis option.\n"
  type: File
  inputBinding:
    prefix: --reverse
- id: in_input_biom_fp
  doc: BIOM format file path.
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: Path to save category unique OTUIDs.
  type: string
  inputBinding:
    position: 1
- id: in_mapping_file
  doc: Mapping file with category information.
  type: string
  inputBinding:
    position: 2
- id: in_category_column
  doc: "Column in mapping file specifying the\ncategory/condition of all samples."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Provide specific text to prepend the output file\nnames. By default, the 'unique'\
    \ will be added in front\nof output filenames, for uniques calculations only."
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_reverse
  doc: "Get shared OTUIDs among all unique combinations of\ngroups and write out the\
    \ results to path provided to\nthis option.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_reverse)
cwlVersion: v1.1
baseCommand:
- extract_shared_or_unique_otuids.py
