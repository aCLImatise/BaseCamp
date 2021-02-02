class: CommandLineTool
id: ../../../ptargrep.cwl
inputs:
- id: in_basename
  doc: "(alias -b)\nWhen matching files are extracted, ignore the directory path from\n\
    the archive and write to the current directory using the basename of\nthe file\
    \ from the archive. Beware: if two matching files in the\narchive have the same\
    \ basename, the second file extracted will\noverwrite the first."
  type: boolean
  inputBinding:
    prefix: --basename
- id: in_ignore_case
  doc: "(alias -i)\nMake pattern matching case-insensitive."
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_list_only
  doc: "(alias -l)\nPrint the pathname of each matching file from the archive to STDOUT.\n\
    Without this option, the default behaviour is to extract each\nmatching file."
  type: boolean
  inputBinding:
    prefix: --list-only
- id: in_verbose
  doc: "(alias -v)\nLog debugging info to STDERR."
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ptargrep
