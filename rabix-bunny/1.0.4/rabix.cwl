class: CommandLineTool
id: rabix.cwl
inputs:
- id: basedir
  doc: execution directory
  type: string
  inputBinding:
    prefix: --basedir
- id: configuration_dir
  doc: configuration directory
  type: string
  inputBinding:
    prefix: --configuration-dir
- id: cache_dir
  doc: basic tool result caching (experimental)
  type: string
  inputBinding:
    prefix: --cache-dir
- id: no_container
  doc: don't use containers
  type: boolean
  inputBinding:
    prefix: --no-container
- id: outdir
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --outdir
- id: quiet
  doc: don't print anything except final result on standard output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: resolve_app
  doc: resolve all referenced fragments and print application as a single JSON document
  type: boolean
  inputBinding:
    prefix: --resolve-app
- id: tes_storage
  doc: path to the storage used by the ga4gh tes server (currently supports locall
    dirs and google storage cloud paths)
  type: string
  inputBinding:
    prefix: --tes-storage
- id: tes_url
  doc: url of the ga4gh task execution server instance (experimental)
  type: string
  inputBinding:
    prefix: --tes-url
- id: tmp_outdir_prefix
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --tmp-outdir-prefix
- id: tmpdir_prefix
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --tmpdir-prefix
- id: verbose
  doc: print more information on the standard output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- rabix
