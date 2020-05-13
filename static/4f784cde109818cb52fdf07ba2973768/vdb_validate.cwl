class: CommandLineTool
id: vdb_validate.2.cwl
inputs:
- id: blob_crc
  doc: '<yes | no>         Check blobs CRC32 (default: yes) '
  type: boolean
  inputBinding:
    prefix: --BLOB-CRC
- id: referential_integrity
  doc: '<yes | no>  Check data referential integrity for  databases (default: yes) '
  type: boolean
  inputBinding:
    prefix: --REFERENTIAL-INTEGRITY
- id: consistency_check
  doc: '<yes | no>  Deeply check data consistency for tables  (default: no) '
  type: boolean
  inputBinding:
    prefix: --CONSISTENCY-CHECK
- id: exhaustive
  doc: 'Continue checking object for all possible  errors (default: false) '
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: sdc
  doc: ':rows <rows>                Specify maximum amount of secondary  alignment
    table rows to look at before  saying accession is good, default 100000.  Specifying
    will iterate the whole table.  Can be in percent (e.g. 5%) '
  type: boolean
  inputBinding:
    prefix: --sdc
- id: sdc
  doc: ':seq-rows <rows>            Specify maximum amount of sequence table  rows
    to look at before saying accession is  good, default 100000. Specifying will  iterate
    the whole table. Can be in percent  (e.g. 5%) '
  type: boolean
  inputBinding:
    prefix: --sdc
- id: sdc
  doc: ':plen_thold <threshold>     Specify threshold for amount of secondary  alignment
    which are shorter (hard-clipped)  than corresponding primaries, default 1%. '
  type: boolean
  inputBinding:
    prefix: --sdc
- id: ngc
  doc: 'path to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-validate.2
