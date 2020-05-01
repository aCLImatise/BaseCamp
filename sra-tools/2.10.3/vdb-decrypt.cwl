#!/usr/bin/env cwl-runner

baseCommand:
- vdb-decrypt.2
class: CommandLineTool
cwlVersion: v1.0
id: vdb-decrypt.2
inputs:
- doc: file to decrypt
  id: source_file
  inputBinding:
    position: 0
  type: string
- doc: name of resulting file
  id: destination_file
  inputBinding:
    position: 1
  type: string
- doc: directory of resulting file
  id: destination_directory
  inputBinding:
    position: 2
  type: string
- doc: directory to decrypt
  id: directory
  inputBinding:
    position: 3
  type: Directory
- doc: 'Force overwrite of existing files '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'decrypt sra archives [NOT RECOMMENDED] '
  id: decrypt_sra_files
  inputBinding:
    prefix: --decrypt-sra-files
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
