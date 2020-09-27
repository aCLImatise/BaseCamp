class: CommandLineTool
id: yapp.cwl
inputs:
- id: in_give_parser_module
  doc: "Give your parser module the name <module>\ndefault is <grammar>"
  type: string
  inputBinding:
    prefix: -m
- id: in_create_file_grammaroutput
  doc: Create a file <grammar>.output describing your parser
  type: File
  inputBinding:
    prefix: -v
- id: in_create_standalone_module
  doc: Create a standalone module in which the driver is included
  type: boolean
  inputBinding:
    prefix: -s
- id: in_disable_source_file
  doc: Disable source file line numbering embedded in your parser
  type: boolean
  inputBinding:
    prefix: -n
- id: in_create_file_outfile
  doc: "Create the file <outfile> for your parser module\nDefault is <grammar>.pm\
    \ or, if -m A::Module::Name is\nspecified, Name.pm"
  type: File
  inputBinding:
    prefix: -o
- id: in_uses_file_filename
  doc: "Uses the file <filename> as a template for creating the parser\nmodule file.\
    \  Default is to use internal template defined\nin Parse::Yapp::Output"
  type: File
  inputBinding:
    prefix: -t
- id: in_adds_very_first
  doc: Adds '#!<shebang>' as the very first line of the output file
  type: File
  inputBinding:
    prefix: -b
- id: in_display_current_version
  doc: Display current version of Parse::Yapp and gracefully exits
  type: boolean
  inputBinding:
    prefix: -V
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: in_grammar
  doc: "The grammar file. If no suffix is given, and the file\ndoes not exists, .yp\
    \ is added"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_create_file_grammaroutput
  doc: Create a file <grammar>.output describing your parser
  type: File
  outputBinding:
    glob: $(inputs.in_create_file_grammaroutput)
- id: out_uses_file_filename
  doc: "Uses the file <filename> as a template for creating the parser\nmodule file.\
    \  Default is to use internal template defined\nin Parse::Yapp::Output"
  type: File
  outputBinding:
    glob: $(inputs.in_uses_file_filename)
- id: out_adds_very_first
  doc: Adds '#!<shebang>' as the very first line of the output file
  type: File
  outputBinding:
    glob: $(inputs.in_adds_very_first)
cwlVersion: v1.1
baseCommand:
- yapp
