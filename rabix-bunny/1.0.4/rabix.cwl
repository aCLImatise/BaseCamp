#!/usr/bin/env cwl-runner

baseCommand:
- rabix
class: CommandLineTool
cwlVersion: v1.0
id: rabix
inputs:
- doc: execution directory
  id: basedir
  inputBinding:
    prefix: --basedir
  type: string
- doc: configuration directory
  id: configuration_dir
  inputBinding:
    prefix: --configuration-dir
  type: string
- doc: basic tool result caching (experimental)
  id: cache_dir
  inputBinding:
    prefix: --cache-dir
  type: string
- doc: don't use containers
  id: no_container
  inputBinding:
    prefix: --no-container
  type: boolean
- doc: legacy compatibility parameter, doesn't do anything
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: don't print anything except final result on standard output
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: resolve all referenced fragments and print application as a single JSON document
  id: resolve_app
  inputBinding:
    prefix: --resolve-app
  type: boolean
- doc: path to the storage used by the ga4gh tes server (currently supports locall
    dirs and google storage cloud paths)
  id: tes_storage
  inputBinding:
    prefix: --tes-storage
  type: string
- doc: url of the ga4gh task execution server instance (experimental)
  id: tes_url
  inputBinding:
    prefix: --tes-url
  type: string
- doc: legacy compatibility parameter, doesn't do anything
  id: tmp_outdir_prefix
  inputBinding:
    prefix: --tmp-outdir-prefix
  type: string
- doc: legacy compatibility parameter, doesn't do anything
  id: tmpdir_prefix
  inputBinding:
    prefix: --tmpdir-prefix
  type: string
- doc: print more information on the standard output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
