class: CommandLineTool
id: _gdlib_config.cwl
inputs:
- id: gd_lib_config
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: libdir
  doc: '# directory where GD library is installed'
  type: boolean
  inputBinding:
    prefix: --libdir
- id: includedir
  doc: '# directory where GD library headers are installed'
  type: boolean
  inputBinding:
    prefix: --includedir
- id: major_version
  doc: '# GD library major version number'
  type: boolean
  inputBinding:
    prefix: --majorversion
- id: minor_version
  doc: '# GD library minor version number'
  type: boolean
  inputBinding:
    prefix: --minorversion
- id: revision
  doc: '# GD library revision version number'
  type: boolean
  inputBinding:
    prefix: --revision
- id: ldflags
  doc: '# options required for linking against GD library'
  type: boolean
  inputBinding:
    prefix: --ldflags
- id: libs
  doc: '# libs required for linking against GD library'
  type: boolean
  inputBinding:
    prefix: --libs
- id: cflags
  doc: '# options required for compiling GD library apps'
  type: boolean
  inputBinding:
    prefix: --cflags
- id: includes
  doc: '# same as --cflags'
  type: boolean
  inputBinding:
    prefix: --includes
- id: features
  doc: '# lists features compiled into gd, separated by spaces. # Currently (as of
    2.2.5) the optional features # are GD_PNG, GD_JPEG, GD_XPM, GD_FREETYPE, and  #
    GD_FONTCONFIG. When these features are reported by # --features, it is safe to
    include calls to the # related functions in your code.'
  type: boolean
  inputBinding:
    prefix: --features
- id: all
  doc: '# print a summary of all GD library configure options'
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- _gdlib-config
