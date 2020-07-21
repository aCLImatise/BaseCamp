class: CommandLineTool
id: ../../../yapp.cwl
inputs:
- id: give_parser_module
  doc: Give your parser module the name <module> default is <grammar>
  type: string
  inputBinding:
    prefix: -m
- id: create_file_grammaroutput
  doc: Create a file <grammar>.output describing your parser
  type: boolean
  inputBinding:
    prefix: -v
- id: create_standalone_module
  doc: Create a standalone module in which the driver is included
  type: boolean
  inputBinding:
    prefix: -s
- id: disable_source_file
  doc: Disable source file line numbering embedded in your parser
  type: boolean
  inputBinding:
    prefix: -n
- id: create_file_outfile
  doc: Create the file <outfile> for your parser module Default is <grammar>.pm or,
    if -m A::Module::Name is specified, Name.pm
  type: string
  inputBinding:
    prefix: -o
- id: uses_file_filename
  doc: Uses the file <filename> as a template for creating the parser module file.  Default
    is to use internal template defined in Parse::Yapp::Output
  type: File
  inputBinding:
    prefix: -t
- id: adds_very_first
  doc: Adds '#!<shebang>' as the very first line of the output file
  type: string
  inputBinding:
    prefix: -b
- id: display_current_version
  doc: Display current version of Parse::Yapp and gracefully exits
  type: boolean
  inputBinding:
    prefix: -V
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: grammar
  doc: The grammar file. If no suffix is given, and the file does not exists, .yp
    is added
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- yapp
