class: CommandLineTool
id: resgen2.cwl
inputs:
- id: in_compile
  doc: ", /compile\ntakes a list of .resX or .txt files to convert to .resources files\n\
    in one bulk operation, replacing .ext with .resources for the\noutput file name\
    \ (if not set)."
  type: File?
  inputBinding:
    prefix: -compile
- id: in_use_sourcepath
  doc: ", /useSourcePath\nto resolve relative file paths, use the directory of the\
    \ resource\nfile as current directory."
  type: boolean?
  inputBinding:
    prefix: -usesourcepath
- id: in_define
  doc: ", /define:SYMBOL1,SYMBOL2\ntakes a comma-separated list of symbols that control\
    \ conditional\ninclusion of resources file. The source file needs to be in\nthe\
    \ '.txt' format.\nResources enclosed with #ifdef SYMBOL1 ... #endif directives\n\
    will be included in the destination file when SYMBOL1 has\nbeen specified using\
    \ /define option.\nResources enclosed with #if ! SYMBOL2 ... #endif directives\n\
    will be included only if SYMBOL2 has NOT been specified.\n"
  type: boolean?
  inputBinding:
    prefix: -define
- id: in_res_gen
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source_do_text
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compile
  doc: ", /compile\ntakes a list of .resX or .txt files to convert to .resources files\n\
    in one bulk operation, replacing .ext with .resources for the\noutput file name\
    \ (if not set)."
  type: File?
  outputBinding:
    glob: $(inputs.in_compile)
hints: []
cwlVersion: v1.1
baseCommand:
- resgen2
