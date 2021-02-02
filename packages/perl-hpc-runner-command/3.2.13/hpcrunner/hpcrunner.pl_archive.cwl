class: CommandLineTool
id: hpcrunner.pl_archive.cwl
inputs:
- id: in_include_paths
  doc: "Include files or directories [Multiple]\n--exclude_paths --ep  Files or directories\
    \ to exclude [Multiple]\n--archive\n--help -h --usage -?  Prints this usage information.\
    \ [Flag]"
  type: boolean
  inputBinding:
    prefix: --include_paths
- id: in_help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hpcrunner.pl
- archive
