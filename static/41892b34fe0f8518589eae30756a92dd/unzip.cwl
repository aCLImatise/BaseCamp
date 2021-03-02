class: CommandLineTool
id: unzip.cwl
inputs:
- id: in_extract_files_pipe
  doc: extract files to pipe, no messages     -l  list files (short format)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_freshen_existing_files
  doc: freshen existing files, create none    -t  test compressed archive data
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_update_files_create
  doc: update files, create if necessary      -z  display archive comment only
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_list_verboselyshow_info
  doc: list verbosely/show version info       -T  timestamp archive to latest
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_exclude_files_follow
  doc: exclude files that follow (in xlist)   -d  extract files into exdir
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_never_overwrite_files
  doc: never overwrite existing files         -q  quiet mode (-qq => quieter)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_overwrite_files_files
  doc: overwrite files WITHOUT prompting      -a  auto-convert any text files
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_junk_paths_make
  doc: junk paths (do not make directories)   -aa treat ALL files as text
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_match_filenames_caseinsensitively
  doc: match filenames case-insensitively     -L  make (some) names lowercase
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_restore_uidgid_info
  doc: restore UID/GID info                   -V  retain VMS version numbers
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_keep_permissions_pipe
  doc: keep setuid/setgid/tacky permissions   -M  pipe through "more" pager
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_opts
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -opts
- id: in_z
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_modifiers
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unzip:6.0
cwlVersion: v1.1
baseCommand:
- unzip
