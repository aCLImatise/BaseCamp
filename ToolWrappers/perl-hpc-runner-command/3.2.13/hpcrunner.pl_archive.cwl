class: CommandLineTool
id: hpcrunner.pl_archive.cwl
inputs:
- id: in_include_paths
  doc: Include files or directories [Multiple]
  type: boolean?
  inputBinding:
    prefix: --include_paths
- id: in_exclude_paths
  doc: Files or directories to exclude [Multiple]
  type: boolean?
  inputBinding:
    prefix: --exclude_paths
- id: in_help
  doc: Prints this usage information
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
- hpcrunner.pl
- archive
