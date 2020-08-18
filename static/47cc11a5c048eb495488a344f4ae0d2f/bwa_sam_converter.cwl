class: CommandLineTool
id: ../../../bwa_sam_converter.pl.cwl
inputs:
- id: file_read_mappings
  doc: file with read mappings in sam format
  type: boolean
  inputBinding:
    prefix: -i
- id: collapsed_read_file
  doc: collapsed read output file
  type: boolean
  inputBinding:
    prefix: -o
- id: mapping_file_arf
  doc: mapping file in arf format
  type: boolean
  inputBinding:
    prefix: -a
- id: collapse_sam_file
  doc: collapse sam file first and create correct mirdeep2 ids
  type: boolean
  inputBinding:
    prefix: -c
- id: tag_temporary_directory
  doc: tag for temporary directory
  type: boolean
  inputBinding:
    prefix: -t
- id: delete_temporary_directory
  doc: do not delete temporary directory
  type: boolean
  inputBinding:
    prefix: -n
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa_sam_converter.pl
