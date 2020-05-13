class: CommandLineTool
id: ktUpdateTaxonomy.sh.cwl
inputs:
- id: only_fetch
  doc: Only download source files; do not build.
  type: boolean
  inputBinding:
    prefix: --only-fetch
- id: only_build
  doc: Assume source files exist; do not fetch.
  type: boolean
  inputBinding:
    prefix: --only-build
- id: preserve
  doc: Do not remove source files after build.
  type: boolean
  inputBinding:
    prefix: --preserve
outputs: []
cwlVersion: v1.1
baseCommand:
- ktUpdateTaxonomy.sh
