class: CommandLineTool
id: zipinfo.cwl
inputs:
- id: in_short_unix_format
  doc: short Unix "ls -l" format (def.)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_filenames_only_one
  doc: filenames ONLY, one per line       -m  medium Unix "ls -l" format
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_just_filenames_allow
  doc: just filenames but allow -h/-t/-z  -l  long Unix "ls -l" format
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_verbose_multipage_format
  doc: verbose, multi-page format
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_zipfile_comment
  doc: print zipfile comment   -T  print file times in sortable decimal format
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_be_caseinsensitive_output
  doc: be case-insensitive     -M  page output through built-in "more"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_exclude_filenames_follow
  doc: exclude filenames that follow from listing
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_onetwosmlvchmttz
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -12smlvChMtTz
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unzip:6.0
cwlVersion: v1.1
baseCommand:
- zipinfo
