class: CommandLineTool
id: bwa_sam_converter.pl.cwl
inputs:
- id: in_file_read_mappings
  doc: file with read mappings in sam format
  type: boolean
  inputBinding:
    prefix: -i
- id: in_collapsed_read_file
  doc: collapsed read output file
  type: File
  inputBinding:
    prefix: -o
- id: in_mapping_file_arf
  doc: mapping file in arf format
  type: boolean
  inputBinding:
    prefix: -a
- id: in_collapse_sam_file
  doc: collapse sam file first and create correct mirdeep2 ids
  type: boolean
  inputBinding:
    prefix: -c
- id: in_tag_temporary_directory
  doc: tag for temporary directory
  type: boolean
  inputBinding:
    prefix: -t
- id: in_delete_temporary_directory
  doc: do not delete temporary directory
  type: boolean
  inputBinding:
    prefix: -n
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_collapsed_read_file
  doc: collapsed read output file
  type: File
  outputBinding:
    glob: $(inputs.in_collapsed_read_file)
cwlVersion: v1.1
baseCommand:
- bwa_sam_converter.pl
