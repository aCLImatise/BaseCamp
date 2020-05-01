#!/usr/bin/env cwl-runner

baseCommand:
- align-info.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: align-info.2.10.3
inputs:
- doc: Path to the database
  id: db_path
  inputBinding:
    position: 0
  type: string
- doc: 'print all information '
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: 'print refseq information [default] '
  id: ref
  inputBinding:
    prefix: --ref
  type: boolean
- doc: 'print bam header (if present) '
  id: bam
  inputBinding:
    prefix: --bam
  type: boolean
- doc: 'print quality statistics (if present) '
  id: qual
  inputBinding:
    prefix: --qual
  type: boolean
- doc: 'print headers for output blocks '
  id: headers
  inputBinding:
    prefix: --headers
  type: boolean
- doc: 'path to ngc file '
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
