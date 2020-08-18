class: CommandLineTool
id: ../../../go_show_paths_to_root.pl.cwl
inputs:
- id: writes_parse_errors
  doc: writes parse errors in XML - defaults to STDERR (there should be no parse errors
    in well formed files)
  type: string
  inputBinding:
    prefix: -e
- id: determines_parser_use
  doc: determines which parser to use; if left unspecified, will make a guess based
    on file suffix. See below for formats
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- go-show-paths-to-root.pl
