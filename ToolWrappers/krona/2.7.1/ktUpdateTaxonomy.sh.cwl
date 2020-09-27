class: CommandLineTool
id: ktUpdateTaxonomy.sh.cwl
inputs:
- id: in_only_fetch
  doc: Only download source files; do not build.
  type: boolean
  inputBinding:
    prefix: --only-fetch
- id: in_only_build
  doc: Assume source files exist; do not fetch.
  type: boolean
  inputBinding:
    prefix: --only-build
- id: in_preserve
  doc: Do not remove source files after build.
  type: boolean
  inputBinding:
    prefix: --preserve
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktUpdateTaxonomy.sh
