#!/usr/bin/env cwl-runner

baseCommand:
- kar.2
class: CommandLineTool
cwlVersion: v1.0
id: kar.2
inputs:
- doc: 'Create new archive. '
  id: create
  inputBinding:
    prefix: --create
  type: string
- doc: 'Extract the contents of an archive into  directory. '
  id: extract
  inputBinding:
    prefix: --extract
  type: string
- doc: 'Check the structural validity of an archive '
  id: test
  inputBinding:
    prefix: --test
  type: string
- doc: 'The next token on the command line is the  name of the directory to extract
    to or  create from '
  id: directory
  inputBinding:
    prefix: --directory
  type: Directory
- doc: '(no parameter) this will cause the extract  or create to over-write existing
    files unless  they are write-protected. Without this  option the program will
    fail if the archive  already exists for create or the target  directory exists
    for an extract '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'more information will be given on each file  in test/list mode. '
  id: long_list
  inputBinding:
    prefix: --long-list
  type: boolean
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
- doc: 'Direct output to stdout '
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: 'create md5sum-compatible checksum file '
  id: md5
  inputBinding:
    prefix: --md5
  type: boolean
