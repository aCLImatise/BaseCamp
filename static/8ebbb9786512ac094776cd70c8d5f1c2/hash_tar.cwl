class: CommandLineTool
id: ../../../hash_tar.cwl
inputs:
- id: tar_archive_filename
  doc: 'Tar archive filename: use if reading from stdin'
  type: string
  inputBinding:
    prefix: -a
- id: force_archive_name
  doc: Force no archive name (eg will concat to archive itself)
  type: boolean
  inputBinding:
    prefix: -A
- id: set_arc_offset
  doc: Set arc. offset to size of hash (use when prepending)
  type: boolean
  inputBinding:
    prefix: -O
- id: verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: index_directory_names
  doc: Index directory names (useless?)
  type: boolean
  inputBinding:
    prefix: -d
- id: set_file_header
  doc: Set tar entry 'name' to be a file header
  type: string
  inputBinding:
    prefix: -h
- id: set_file_footer
  doc: Set tar entry 'name' to be a file footer
  type: string
  inputBinding:
    prefix: -f
- id: use_only_portion
  doc: Use only the filename portion of a pathname
  type: boolean
  inputBinding:
    prefix: -b
- id: reads_lines_renames
  doc: Reads lines of 'old new' and renames entries before indexing.
  type: string
  inputBinding:
    prefix: -m
- id: tar_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hash_tar
