class: CommandLineTool
id: yapp.cwl
inputs:
- id: or
  doc: yapp -V
  type: string
  inputBinding:
    position: 0
- id: or
  doc: yapp -h
  type: string
  inputBinding:
    position: 1
- id: grammar
  doc: The grammar file. If no suffix is given, and the file does not exists, .yp
    is added
  type: string
  inputBinding:
    position: 2
- id: m
  doc: Give your parser module the name <module> default is <grammar>
  type: string
  inputBinding:
    prefix: -m
- id: v
  doc: Create a file <grammar>.output describing your parser
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: Create a standalone module in which the driver is included
  type: boolean
  inputBinding:
    prefix: -s
- id: n
  doc: Disable source file line numbering embedded in your parser
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: Create the file <outfile> for your parser module Default is <grammar>.pm or,
    if -m A::Module::Name is specified, Name.pm
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: Uses the file <filename> as a template for creating the parser module file.  Default
    is to use internal template defined in Parse::Yapp::Output
  type: File
  inputBinding:
    prefix: -t
- id: b
  doc: Adds '#!<shebang>' as the very first line of the output file
  type: string
  inputBinding:
    prefix: -b
- id: v
  doc: Display current version of Parse::Yapp and gracefully exits
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- yapp
