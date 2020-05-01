#!/usr/bin/env cwl-runner

baseCommand:
- ktUpdateTaxonomy.sh
class: CommandLineTool
cwlVersion: v1.0
id: ktupdatetaxonomy.sh
inputs:
- doc: Only download source files; do not build.
  id: only_fetch
  inputBinding:
    prefix: --only-fetch
  type: boolean
- doc: Assume source files exist; do not fetch.
  id: only_build
  inputBinding:
    prefix: --only-build
  type: boolean
- doc: Do not remove source files after build.
  id: preserve
  inputBinding:
    prefix: --preserve
  type: boolean
