class: CommandLineTool
id: ccconfig.cwl
inputs:
- id: in__cc_compiler
  doc: "--cc             compiler   compiler executable to test\ndefault: auto-determined\n\
    -o\n--output-file    file       output filename\ndefault: output to stdout\n-f\n\
    --output-format  format     output format\ndefault: dumper\n--basename       name\
    \       basename of the temporary test files\ndefault: _t_e_s_t\n-I\n--inc-path\
    \       path       manually set compiler include path\n--preprocess     rule \
    \      compiler rule for preprocessing\n--compile-obj    rule       compiler rule\
    \ for compiling objects\n--compile-exe    rule       compiler rule for compiling\
    \ executables\n--c-ext          ext        extension of C source files\n--pp-ext\
    \         ext        extension of preprocessor output files\n--obj-ext       \
    \ ext        extension of object files\n--exe-ext        ext        extension\
    \ of executable files\n--nodelete                  don't delete temporary files\n\
    --norun                     don't try to run executables\n--quiet            \
    \         don't display anything\n--nostatus                  don't display status\
    \ indicator\n--version                   print version number\n--debug       \
    \              debug mode"
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ccconfig