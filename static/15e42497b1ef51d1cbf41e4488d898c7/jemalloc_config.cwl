class: CommandLineTool
id: jemalloc_config.cwl
inputs:
- id: revision
  doc: ': Print shared library revision number.'
  type: boolean
  inputBinding:
    prefix: --revision
- id: config
  doc: ': Print configure options used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --config
- id: prefix
  doc: ': Print installation directory prefix.'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: bindir
  doc: ': Print binary installation directory.'
  type: boolean
  inputBinding:
    prefix: --bindir
- id: datadir
  doc: ': Print data installation directory.'
  type: boolean
  inputBinding:
    prefix: --datadir
- id: includedir
  doc: ': Print include installation directory.'
  type: boolean
  inputBinding:
    prefix: --includedir
- id: libdir
  doc: ': Print library installation directory.'
  type: boolean
  inputBinding:
    prefix: --libdir
- id: mandir
  doc: ': Print manual page installation directory.'
  type: boolean
  inputBinding:
    prefix: --mandir
- id: cc
  doc: ': Print compiler used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cc
- id: cflags
  doc: ': Print compiler flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cflags
- id: cppflags
  doc: ': Print preprocessor flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cppflags
- id: ldflags
  doc: ': Print library flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --ldflags
- id: libs
  doc: ': Print libraries jemalloc was linked against.'
  type: boolean
  inputBinding:
    prefix: --libs
outputs: []
cwlVersion: v1.1
baseCommand:
- jemalloc-config
