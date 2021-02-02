class: CommandLineTool
id: jemalloc_config.cwl
inputs:
- id: in_revision
  doc: ': Print shared library revision number.'
  type: boolean
  inputBinding:
    prefix: --revision
- id: in_config
  doc: ': Print configure options used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --config
- id: in_prefix
  doc: ': Print installation directory prefix.'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_bindir
  doc: ': Print binary installation directory.'
  type: boolean
  inputBinding:
    prefix: --bindir
- id: in_datadir
  doc: ': Print data installation directory.'
  type: boolean
  inputBinding:
    prefix: --datadir
- id: in_includedir
  doc: ': Print include installation directory.'
  type: boolean
  inputBinding:
    prefix: --includedir
- id: in_libdir
  doc: ': Print library installation directory.'
  type: boolean
  inputBinding:
    prefix: --libdir
- id: in_mandir
  doc: ': Print manual page installation directory.'
  type: boolean
  inputBinding:
    prefix: --mandir
- id: in_cc
  doc: ': Print compiler used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cc
- id: in_cflags
  doc: ': Print compiler flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cflags
- id: in_cppflags
  doc: ': Print preprocessor flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --cppflags
- id: in_ldflags
  doc: ': Print library flags used to build jemalloc.'
  type: boolean
  inputBinding:
    prefix: --ldflags
- id: in_libs
  doc: ': Print libraries jemalloc was linked against.'
  type: boolean
  inputBinding:
    prefix: --libs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jemalloc-config
