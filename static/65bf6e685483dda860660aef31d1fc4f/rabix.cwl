class: CommandLineTool
id: rabix.cwl
inputs:
- id: in_basedir
  doc: execution directory
  type: Directory
  inputBinding:
    prefix: --basedir
- id: in_configuration_dir
  doc: configuration directory
  type: Directory
  inputBinding:
    prefix: --configuration-dir
- id: in_cache_dir
  doc: basic tool result caching (experimental)
  type: string
  inputBinding:
    prefix: --cache-dir
- id: in_no_container
  doc: don't use containers
  type: boolean
  inputBinding:
    prefix: --no-container
- id: in_outdir
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: don't print anything except final result on standard
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_tes_storage
  doc: "path to the storage used by the ga4gh tes server\n(currently supports locall\
    \ dirs and google storage\ncloud paths)"
  type: File
  inputBinding:
    prefix: --tes-storage
- id: in_tes_url
  doc: "url of the ga4gh task execution server instance\n(experimental)"
  type: long
  inputBinding:
    prefix: --tes-url
- id: in_tmp_outdir_prefix
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --tmp-outdir-prefix
- id: in_tmpdir_prefix
  doc: legacy compatibility parameter, doesn't do anything
  type: string
  inputBinding:
    prefix: --tmpdir-prefix
- id: in_verbose
  doc: print more information on the standard output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: -r,--resolve-app               resolve all referenced fragments and print application
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rabix
