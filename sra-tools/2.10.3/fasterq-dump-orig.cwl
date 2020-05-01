#!/usr/bin/env cwl-runner

baseCommand:
- fasterq-dump-orig
class: CommandLineTool
cwlVersion: v1.0
id: fasterq-dump-orig
inputs:
- doc: ''
  id: path
  inputBinding:
    position: 0
  type: File
- doc: 'writes whole spots into one file '
  id: concatenate_reads
  inputBinding:
    prefix: --concatenate-reads
  type: boolean
- doc: 'print output to stdout '
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: 'force to overwrite existing file(s) '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'use row-id as name '
  id: rowid_as_name
  inputBinding:
    prefix: --rowid-as-name
  type: boolean
- doc: 'skip technical reads '
  id: skip_technical
  inputBinding:
    prefix: --skip-technical
  type: boolean
- doc: 'include technical reads '
  id: include_technical
  inputBinding:
    prefix: --include-technical
  type: boolean
- doc: 'print read-numbers '
  id: print_read_nr
  inputBinding:
    prefix: --print-read-nr
  type: boolean
- doc: 'filter by sequence-len '
  id: min_read_len
  inputBinding:
    prefix: --min-read-len
  type: boolean
- doc: 'which seq-table to use in case of pacbio '
  id: table
  inputBinding:
    prefix: --table
  type: boolean
- doc: 'terminate on invalid read '
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: 'filter by bases '
  id: bases
  inputBinding:
    prefix: --bases
  type: boolean
- doc: 'append to output-file '
  id: append
  inputBinding:
    prefix: --append
  type: boolean
- doc: 'PATH to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
