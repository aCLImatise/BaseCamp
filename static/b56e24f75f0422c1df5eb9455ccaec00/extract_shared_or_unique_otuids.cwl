class: CommandLineTool
id: extract_shared_or_unique_otuids.py.cwl
inputs:
- id: input_biom_fp
  doc: BIOM format file path.
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: Path to save category unique OTUIDs.
  type: string
  inputBinding:
    position: 1
- id: mapping_file
  doc: Mapping file with category information.
  type: string
  inputBinding:
    position: 2
- id: category_column
  doc: Column in mapping file specifying the category/condition of all samples.
  type: string
  inputBinding:
    position: 3
- id: prefix
  doc: Provide specific text to prepend the output file names. By default, the 'unique'
    will be added in front of output filenames, for uniques calculations only.
  type: string
  inputBinding:
    prefix: --prefix
- id: reverse
  doc: Get shared OTUIDs among all unique combinations of groups and write out the
    results to path provided to this option.
  type: string
  inputBinding:
    prefix: --reverse
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_shared_or_unique_otuids.py
