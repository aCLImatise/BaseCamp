class: CommandLineTool
id: _gdlib_config.cwl
inputs:
- id: in_libdir
  doc: '# directory where GD library is installed'
  type: boolean
  inputBinding:
    prefix: --libdir
- id: in_includedir
  doc: '# directory where GD library headers are installed'
  type: boolean
  inputBinding:
    prefix: --includedir
- id: in_major_version
  doc: '# GD library major version number'
  type: boolean
  inputBinding:
    prefix: --majorversion
- id: in_minor_version
  doc: '# GD library minor version number'
  type: boolean
  inputBinding:
    prefix: --minorversion
- id: in_revision
  doc: '# GD library revision version number'
  type: boolean
  inputBinding:
    prefix: --revision
- id: in_ldflags
  doc: '# options required for linking against GD library'
  type: boolean
  inputBinding:
    prefix: --ldflags
- id: in_libs
  doc: '# libs required for linking against GD library'
  type: boolean
  inputBinding:
    prefix: --libs
- id: in_cflags
  doc: '# options required for compiling GD library apps'
  type: boolean
  inputBinding:
    prefix: --cflags
- id: in_includes
  doc: '# same as --cflags'
  type: boolean
  inputBinding:
    prefix: --includes
- id: in_features
  doc: "# lists features compiled into gd, separated by spaces.\n# Currently (as of\
    \ 2.2.5) the optional features\n# are GD_PNG, GD_JPEG, GD_XPM, GD_FREETYPE, and\n\
    # GD_FONTCONFIG. When these features are reported by\n# --features, it is safe\
    \ to include calls to the\n# related functions in your code."
  type: boolean
  inputBinding:
    prefix: --features
- id: in_all
  doc: '# print a summary of all GD library configure options'
  type: boolean
  inputBinding:
    prefix: --all
- id: in_gd_lib_config
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _gdlib-config
