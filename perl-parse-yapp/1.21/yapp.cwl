#!/usr/bin/env cwl-runner

baseCommand:
- yapp
class: CommandLineTool
cwlVersion: v1.0
id: yapp
inputs:
- doc: yapp -V
  id: or
  inputBinding:
    position: 0
  type: string
- doc: yapp -h
  id: or
  inputBinding:
    position: 1
  type: string
- doc: The grammar file. If no suffix is given, and the file does not exists, .yp
    is added
  id: grammar
  inputBinding:
    position: 2
  type: string
- doc: Give your parser module the name <module> default is <grammar>
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: Create a file <grammar>.output describing your parser
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Create a standalone module in which the driver is included
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Disable source file line numbering embedded in your parser
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Create the file <outfile> for your parser module Default is <grammar>.pm or,
    if -m A::Module::Name is specified, Name.pm
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Uses the file <filename> as a template for creating the parser module file.  Default
    is to use internal template defined in Parse::Yapp::Output
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Adds '#!<shebang>' as the very first line of the output file
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: Display current version of Parse::Yapp and gracefully exits
  id: v
  inputBinding:
    prefix: -V
  type: boolean
