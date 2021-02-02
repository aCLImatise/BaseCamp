class: CommandLineTool
id: drive_pull.cwl
inputs:
- id: in_all
  doc: all the starred files
  type: boolean
  inputBinding:
    prefix: -all
- id: in_decryption_password
  doc: decryption password
  type: string
  inputBinding:
    prefix: -decryption-password
- id: in_depth
  doc: max traversal depth (default -1)
  type: long
  inputBinding:
    prefix: -depth
- id: in_desktop_links
  doc: allows docs + sheets to be pulled as .desktop files or URL linked files (default
    true)
  type: boolean
  inputBinding:
    prefix: -desktop-links
- id: in_directories
  doc: pull only directories
  type: boolean
  inputBinding:
    prefix: -directories
- id: in_exclude_ops
  doc: exclude operations
  type: string
  inputBinding:
    prefix: -exclude-ops
- id: in_explicitly_export
  doc: explicitly pull exports
  type: boolean
  inputBinding:
    prefix: -explicitly-export
- id: in_export
  doc: comma separated list of formats to export your docs + sheets files
  type: string
  inputBinding:
    prefix: -export
- id: in_exports_dir
  doc: directory to place exports
  type: Directory
  inputBinding:
    prefix: -exports-dir
- id: in_files
  doc: pull only files
  type: boolean
  inputBinding:
    prefix: -files
- id: in_fix_clashes
  doc: fix clashes by renaming or trashing files
  type: boolean
  inputBinding:
    prefix: -fix-clashes
- id: in_force
  doc: forces a pull even if no changes present
  type: boolean
  inputBinding:
    prefix: -force
- id: in_ignore_conflict
  doc: turns off the conflict resolution safety
  type: boolean
  inputBinding:
    prefix: -ignore-conflict
- id: in_ignore_name_clashes
  doc: ignore name clashes
  type: boolean
  inputBinding:
    prefix: -ignore-name-clashes
- id: in_matches
  doc: search by prefix
  type: boolean
  inputBinding:
    prefix: -matches
- id: in_no_clobber
  doc: prevents overwriting of old content
  type: boolean
  inputBinding:
    prefix: -no-clobber
- id: in_no_prompt
  doc: shows no prompt before applying the pull action
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: in_piped
  doc: get content in from standard input (stdin)
  type: boolean
  inputBinding:
    prefix: -piped
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: performs the pull action recursively (default true)
  type: boolean
  inputBinding:
    prefix: -recursive
- id: in_retry_count
  doc: max number of retries for exponential backoff (default 20)
  type: long
  inputBinding:
    prefix: -retry-count
- id: in_same_exports_dir
  doc: exports are put in the same directory
  type: boolean
  inputBinding:
    prefix: -same-exports-dir
- id: in_skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string
  inputBinding:
    prefix: -skip-mime
- id: in_starred
  doc: operate only on starred files
  type: boolean
  inputBinding:
    prefix: -starred
- id: in_trashed
  doc: pull content in the trash
  type: boolean
  inputBinding:
    prefix: -trashed
- id: in_verbose
  doc: "show step by step information verbosely\n"
  type: boolean
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drive
- pull
