class: CommandLineTool
id: planemo_dependency_script.cwl
inputs:
- id: in_recursive
  doc: "Recursively perform command for nested\nrepository directories."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_fail_fast
  doc: "If multiple repositories are specified and an\nerror occurs stop immediately\
    \ instead of\nprocessing remaining repositories."
  type: boolean?
  inputBinding:
    prefix: --fail_fast
- id: in_download_cache
  doc: "Directory to cache downloaded files, default is\n$DOWNLOAD_CACHE"
  type: Directory?
  inputBinding:
    prefix: --download_cache
- id: in_variables_dot
  doc: These are intended to be used via ``bash dep_install.sh`` (once), and as
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- dependency_script
