#!/usr/bin/env cwl-runner

baseCommand:
- vdb-validate.2
class: CommandLineTool
cwlVersion: v1.0
id: vdb-validate.2
inputs:
- doc: '<yes | no>         Check blobs CRC32 (default: yes) '
  id: blob_crc
  inputBinding:
    prefix: --BLOB-CRC
  type: boolean
- doc: '<yes | no>  Check data referential integrity for  databases (default: yes) '
  id: referential_integrity
  inputBinding:
    prefix: --REFERENTIAL-INTEGRITY
  type: boolean
- doc: '<yes | no>  Deeply check data consistency for tables  (default: no) '
  id: consistency_check
  inputBinding:
    prefix: --CONSISTENCY-CHECK
  type: boolean
- doc: 'Continue checking object for all possible  errors (default: false) '
  id: exhaustive
  inputBinding:
    prefix: --exhaustive
  type: boolean
- doc: ':rows <rows>                Specify maximum amount of secondary  alignment
    table rows to look at before  saying accession is good, default 100000.  Specifying
    will iterate the whole table.  Can be in percent (e.g. 5%) '
  id: sdc
  inputBinding:
    prefix: --sdc
  type: boolean
- doc: ':seq-rows <rows>            Specify maximum amount of sequence table  rows
    to look at before saying accession is  good, default 100000. Specifying will  iterate
    the whole table. Can be in percent  (e.g. 5%) '
  id: sdc
  inputBinding:
    prefix: --sdc
  type: boolean
- doc: ':plen_thold <threshold>     Specify threshold for amount of secondary  alignment
    which are shorter (hard-clipped)  than corresponding primaries, default 1%. '
  id: sdc
  inputBinding:
    prefix: --sdc
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
