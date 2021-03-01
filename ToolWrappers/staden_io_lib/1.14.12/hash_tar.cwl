class: CommandLineTool
id: hash_tar.cwl
inputs:
- id: in_tar_archive_use
  doc: 'Tar archive filename: use if reading from stdin'
  type: File?
  inputBinding:
    prefix: -a
- id: in_force_name_eg
  doc: Force no archive name (eg will concat to archive itself)
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_set_arc_offset
  doc: Set arc. offset to size of hash (use when prepending)
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_index_directory_names
  doc: Index directory names (useless?)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_set_file_header
  doc: Set tar entry 'name' to be a file header
  type: File?
  inputBinding:
    prefix: -h
- id: in_set_file_footer
  doc: Set tar entry 'name' to be a file footer
  type: File?
  inputBinding:
    prefix: -f
- id: in_use_only_portion
  doc: Use only the filename portion of a pathname
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_reads_lines_entries
  doc: Reads lines of 'old new' and renames entries before indexing.
  type: string?
  inputBinding:
    prefix: -m
- id: in_tar_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hash_tar
