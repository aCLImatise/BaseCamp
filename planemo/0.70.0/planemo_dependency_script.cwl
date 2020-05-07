class: CommandLineTool
id: planemo_dependency_script.cwl
inputs:
- id: recursive
  doc: Recursively perform command for nested repository directories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: fail_fast
  doc: If multiple repositories are specified and an error occurs stop immediately
    instead of processing remaining repositories.
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: download_cache
  doc: Directory to cache downloaded files, default is $DOWNLOAD_CACHE
  type: Directory
  inputBinding:
    prefix: --download_cache
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- dependency_script
