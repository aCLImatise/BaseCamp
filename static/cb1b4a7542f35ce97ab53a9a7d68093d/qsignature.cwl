class: CommandLineTool
id: qsignature.cwl
inputs:
- id: or
  doc: java [options] -jar <jarfile> [args...] (to execute a jar file)
  type: string
  inputBinding:
    position: 0
- id: or
  doc: java [options] -m <module>[/<mainclass>] [args...] java [options] --module
    <module>[/<mainclass>] [args...] (to execute the main class in a module)
  type: string
  inputBinding:
    position: 1
- id: or
  doc: java [options] <sourcefile> [args] (to execute a single source-file program)
  type: string
  inputBinding:
    position: 2
- id: disable_files
  doc: prevent further argument file expansion
  type: boolean
  inputBinding:
    prefix: -disable-@files
- id: enable_preview
  doc: allow classes to depend on preview features of this release
  type: boolean
  inputBinding:
    prefix: --enable-preview
outputs: []
cwlVersion: v1.1
baseCommand:
- qsignature
