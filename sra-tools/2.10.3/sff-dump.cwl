#!/usr/bin/env cwl-runner

baseCommand:
- sff-dump.2
class: CommandLineTool
cwlVersion: v1.0
id: sff-dump.2
inputs:
- doc: 'Replaces accession derived from <path> in  filename(s) and deflines (only
    for single  table dump) '
  id: accession
  inputBinding:
    prefix: --accession
  type: string
- doc: "Output directory, default is working  directory '.' ) "
  id: outdir
  inputBinding:
    prefix: --outdir
  type: File
- doc: 'Output to stdout, all split data become  joined into single stream '
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: '<path> to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Minimum spot id '
  id: min_spot_id
  inputBinding:
    prefix: --minSpotId
  type: string
- doc: 'Maximum spot id '
  id: max_spot_id
  inputBinding:
    prefix: --maxSpotId
  type: string
- doc: 'Split into files by SPOT_GROUP (member name) '
  id: spot_group
  inputBinding:
    prefix: --spot-group
  type: boolean
- doc: '<[list]>           Filter by SPOT_GROUP (member): name[,...] '
  id: spot_groups
  inputBinding:
    prefix: --spot-groups
  type: boolean
- doc: '<[filter]>      Split into files by READ_FILTER value  optionally filter by
    value:  pass|reject|criteria|redacted '
  id: read_filter
  inputBinding:
    prefix: --read-filter
  type: boolean
- doc: 'Split into subdirectories instead of files '
  id: group_in_dirs
  inputBinding:
    prefix: --group-in-dirs
  type: boolean
- doc: 'Do not delete empty files '
  id: keep_empty_files
  inputBinding:
    prefix: --keep-empty-files
  type: boolean
- doc: 'Table name within cSRA object, default is  "SEQUENCE" '
  id: table
  inputBinding:
    prefix: --table
  type: string
- doc: 'disable multithreading '
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: 'Logging level as number or enum string One  of (fatal|sys|int|err|warn|info)
    or (0-5)  Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity level of the program  Use multiple times for more verbosity '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Control program execution environment  report generation (if implemented).
    One of  (never|error|always). Default is error '
  id: ncbi_error_report
  inputBinding:
    prefix: --ncbi_error_report
  type: boolean
- doc: "use legacy style 'Written spots' for tool "
  id: legacy_report
  inputBinding:
    prefix: --legacy-report
  type: boolean
