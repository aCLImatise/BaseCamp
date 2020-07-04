class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xtractprotos.cwl
inputs:
- id: preprocess_only_compile
  doc: Preprocess only; do not compile, assemble or link.
  type: boolean
  inputBinding:
    prefix: -E
- id: compile_only_assemble
  doc: Compile only; do not assemble or link.
  type: boolean
  inputBinding:
    prefix: -S
- id: compile_assemble_link
  doc: Compile and assemble, but do not link.
  type: boolean
  inputBinding:
    prefix: -c
- id: place_output_file
  doc: Place the output into <file>.
  type: File
  inputBinding:
    prefix: -o
- id: pie
  doc: Create a dynamically linked position independent executable.
  type: boolean
  inputBinding:
    prefix: -pie
- id: shared
  doc: Create a shared library.
  type: boolean
  inputBinding:
    prefix: -shared
- id: specify_language_following
  doc: "Specify the language of the following input files. Permissible languages include:\
    \ c c++ assembler none 'none' means revert to the default behavior of guessing\
    \ the language based on the file's extension."
  type: string
  inputBinding:
    prefix: -x
- id: cpp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_dot_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- xtractprotos
