class: CommandLineTool
id: graftM_archive.cwl
inputs:
- id: in_create
  doc: Create a new GraftM package archive
  type: boolean
  inputBinding:
    prefix: --create
- id: in_extract
  doc: Extract a archived GraftM package into a regular one
  type: boolean
  inputBinding:
    prefix: --extract
- id: in_graft_m_package
  doc: Path to a GraftM package to inspect. GraftM will decorate the rooted tree within
    using the taxonomy within.
  type: File
  inputBinding:
    prefix: --graftm_package
- id: in_archive
  doc: Path to archived GraftM package, canonically ending in '.gpkg.tar.gz'
  type: File
  inputBinding:
    prefix: --archive
- id: in_force
  doc: Force overwrite the output archive/gpkg, even if one already exists with the
    same name
  type: boolean
  inputBinding:
    prefix: --force
- id: in_verbosity
  doc: '1 - 5, 1 being silent, 5 being noisy indeed. Default = 4 (default: 4)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_log
  doc: Output logging information to file
  type: File
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to file
  type: File
  outputBinding:
    glob: $(inputs.in_log)
cwlVersion: v1.1
baseCommand:
- graftM
- archive
